.class public Lcom/unisound/lib/msgcenter/push/bean/PushMessage;
.super Ljava/lang/Object;
.source "PushMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final MESSAGE_ALERT_ALARM:Ljava/lang/String; = "alertAlarm"

.field public static final MESSAGE_COOKBOOK:Ljava/lang/String; = "cookbook"

.field public static final MESSAGE_PUSH_NAVI:Ljava/lang/String; = "pushNavi"


# instance fields
.field private id:Ljava/lang/String;

.field private info:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private messageTip:Ljava/lang/String;

.field private messageType:Ljava/lang/String;

.field private receivedTime:Ljava/lang/String;

.field private sendTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/PushMessage;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/PushMessage;->info:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessageTip()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/PushMessage;->messageTip:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/PushMessage;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method public getReceivedTime()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/PushMessage;->receivedTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSendTime()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/PushMessage;->sendTime:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/PushMessage;->id:Ljava/lang/String;

    return-void
.end method

.method public setInfo(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/PushMessage;->info:Ljava/lang/Object;

    return-void
.end method

.method public setMessageTip(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/PushMessage;->messageTip:Ljava/lang/String;

    return-void
.end method

.method public setMessageType(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/PushMessage;->messageType:Ljava/lang/String;

    return-void
.end method

.method public setReceivedTime(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/PushMessage;->receivedTime:Ljava/lang/String;

    return-void
.end method

.method public setSendTime(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/PushMessage;->sendTime:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PushMessage{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/lib/msgcenter/push/bean/PushMessage;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", messageType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/push/bean/PushMessage;->messageType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", messageTip=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/push/bean/PushMessage;->messageTip:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sendTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/push/bean/PushMessage;->sendTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", receivedTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/push/bean/PushMessage;->receivedTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/lib/msgcenter/push/bean/PushMessage;->info:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
