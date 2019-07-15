.class public interface abstract Lcom/unisound/vui/message/TransferHandlerWithGui;
.super Ljava/lang/Object;


# virtual methods
.method public abstract preReceiveMsg(Lcom/unisound/vui/message/MessageBeanHandlerGui;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/vui/message/MessageBeanHandlerGui",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract receiveMsg(Lcom/unisound/vui/message/MessageBeanHandlerGui;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/vui/message/MessageBeanHandlerGui",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract registerMessageHandlerWithGui(Lcom/unisound/vui/message/TransferHandlerWithGui;)V
.end method

.method public abstract sendMsg(Lcom/unisound/vui/message/MessageBeanHandlerGui;Lcom/unisound/vui/message/TransferHandlerWithGui;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/vui/message/MessageBeanHandlerGui",
            "<*>;",
            "Lcom/unisound/vui/message/TransferHandlerWithGui;",
            ")V"
        }
    .end annotation
.end method
