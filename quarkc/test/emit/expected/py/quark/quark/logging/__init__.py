from quark_runtime import *

import quark.reflect
import quark_md


class Appender(object):
    """
    Destination for logging, just a marker interface for now
    """
    pass
Appender.quark_logging_Appender_ref = quark_md.Root.quark_logging_Appender_md
class Config(object):
    """
    Logging configurator
    """

    def setAppender(self, appender):
        """
        Set the destination for logging, default stderr()
        """
        assert False

    def setLevel(self, level):
        """
        set the logging level [trace|debug|info|warn|error], default 'info'
        """
        assert False

    def configure(self):
        """
        Configure the logging
        """
        assert False

Config.quark_logging_Config_ref = quark_md.Root.quark_logging_Config_md
