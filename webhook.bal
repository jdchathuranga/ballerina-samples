import ballerinax/trigger.slack;
import ballerina/http;

configurable slack:ListenerConfig config = ?;

listener http:Listener httpListener = new(8090);
listener slack:Listener webhookListener =  new(config,httpListener);

service slack:ChannelService on webhookListener {
  
    remote function onChannelArchive(slack:GenericEventWrapper payload ) returns error? {
      //Not Implemented
    }
    remote function onChannelCreated(slack:GenericEventWrapper payload ) returns error? {
      //Not Implemented
    }
    remote function onChannelDeleted(slack:GenericEventWrapper payload ) returns error? {
      //Not Implemented
    }
    remote function onChannelHistoryChanged(slack:GenericEventWrapper payload ) returns error? {
      //Not Implemented
    }
    remote function onChannelLeft(slack:GenericEventWrapper payload ) returns error? {
      //Not Implemented
    }
    remote function onChannelRename(slack:GenericEventWrapper payload ) returns error? {
      //Not Implemented
    }
    remote function onChannelUnarchive(slack:GenericEventWrapper payload ) returns error? {
      //Not Implemented
    }
}

service /ignore on httpListener {}