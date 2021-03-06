module Orange
  # Orange::Application is the main class used for building an
  # Orange App. Typically you will not initialize it directly,
  # but use the app method, which returns the entire Orange
  # stack, with all middleware and the Orange::Application as
  # the main receiver
  #
  # To override the stack generated by default, you can use
  # the self.stack method, which will be used to create a new
  # Orange::Stack
  class Application
    extend ClassInheritableAttributes
    cattr_accessor :core, :stack_block
    # Initialize will set the core, and additionally accept any
    # other options to be added in to the opts array
    # @param [Orange::Core] core the orange core instance that this application will use
    # @param [Hash] *opts the optional arguments
    def initialize(core = false, *opts, &block)
      @core = core || self.class.core
      @options ||= {}
      @options = Orange::Options.new(*opts, &block).hash.with_defaults(self.class.opts)
      @core.application(self) # Register self into core
      init
    end
    
    # stack_init is ONLY called after the {#app} 
    # method is called, loading a stack
    # (just in case the middleware stack added necessary functionality, etc)
    def stack_init
    end
    
    # This method is called by initialize, subclasses should override this method
    # for their own initialization needs.
    # 
    # It will usually be better to use stack_init, which gives full access to
    # the initialized stack
    def init
    end
    
    # Set the orange core to be a new core
    #
    # Generally, the core should be set during initialization, rather
    # than with this method.
    # @param [Orange::Core] core the orange core instance
    def set_core(core)
      @core = core
    end
    
    # The standard call as required by rack. This will 
    # make an Orange::Packet object (if necessary) and
    # then send it to the appropriate router for routing.
    #
    # If the :self_routing option is true (default) then
    # the packet will be routed by the application if there
    # is not already another class volunteering for that role.
    # (Routers declare themselves in the orange 
    # env['route.router'] to be called by the application)
    # 
    # 
    def call(env)
      packet = Orange::Packet.new(@core, env)
      # Set up this application as router if nothing else has
      # assumed routing responsibility (for Sinatra DSL like routing)
      self_routing = opts[:self_routing] || true
      if (!packet['route.router'] && self_routing)
        packet['route.router'] = self
      end
      packet.route
      packet.finish
    end
    
    # Returns the core
    # @return [Orange::Core] the core instance set for the application
    def orange
      @core
    end
    
    # The default route method for the application. Must be overridden in subclasses.
    # 
    # This method will raise a RuntimeError if not overridden.
    # The intent is for the application subclass to override this method
    # and use it to handle packets not routed by Stack middleware.
    def route(packet)
      raise "default response from Orange::Application.route"
    end
    
    # Used to set optional values at class level. Will be merged into the options
    # given at initialization time
    def self.set(key, v = true)
      @class_opts ||= {}
      @class_opts[key] = v
    end
    
    # Gives access to class defined options. 
    def self.opts
      @class_opts ||= {}
    end
    
    # Gives access to options for the application, both from the class and the 
    # instance level. 
    # @return [Hash] the options hash
    def opts
      @options
    end
    
    # Returns an instance of Orange::Stack to be run by Rack
    #
    # Usually, you'll call this in the rackup file: `run MyApplication.app`
    def self.app(c = false)
      if c
        self.core = c 
      else
        self.core ||= Orange::Core.new
      end
      return self.core.stack unless self.core.stack.blank?
      if self.stack_block.instance_of?(Proc)
        Orange::Stack.new self, self.core, &self.stack_block   # turn saved proc into a block arg
      else
        Orange::Stack.new self, self.core
      end
    end
    
    # Changes the stack that will be used when {#app}
    # is called
    # 
    # Each call to stack overrides the previous one.
    def self.stack(core = false, &block)
      self.core = core if core
      self.stack_block = Proc.new           # pulls in the block and makes it a proc
    end
  end
end