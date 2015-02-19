require_relative '../phase3/controller_base'
require_relative './session'

module Phase4
  class ControllerBase < Phase3::ControllerBase
    def redirect_to(url)
      super(url)
      @session.store_session(@res)

      nil
    end

    def render_content(content, type)
      super(content, type)
      @session.store_session(r@es)
    end

    # method exposing a `Session` object
    def session
      @session ||= Phase4::Session.new(@req)
    end
  end
end
