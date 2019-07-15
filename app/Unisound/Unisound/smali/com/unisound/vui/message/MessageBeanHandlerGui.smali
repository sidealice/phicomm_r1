.class public Lcom/unisound/vui/message/MessageBeanHandlerGui;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private duration:I

.field private extra:Ljava/lang/String;

.field private sessionName:Ljava/lang/String;

.field private voiceTip:Lcom/unisound/vui/message/VoiceTip;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/message/MessageBeanHandlerGui;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/message/MessageBeanHandlerGui;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/unisound/vui/message/MessageBeanHandlerGui;->duration:I

    return v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/message/MessageBeanHandlerGui;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/message/MessageBeanHandlerGui;->sessionName:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceTip()Lcom/unisound/vui/message/VoiceTip;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/message/MessageBeanHandlerGui;->voiceTip:Lcom/unisound/vui/message/VoiceTip;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/unisound/vui/message/MessageBeanHandlerGui;, "Lcom/unisound/vui/message/MessageBeanHandlerGui<TT;>;"
    iput-object p1, p0, Lcom/unisound/vui/message/MessageBeanHandlerGui;->action:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/message/MessageBeanHandlerGui;, "Lcom/unisound/vui/message/MessageBeanHandlerGui<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/unisound/vui/message/MessageBeanHandlerGui;->data:Ljava/lang/Object;

    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .local p0, "this":Lcom/unisound/vui/message/MessageBeanHandlerGui;, "Lcom/unisound/vui/message/MessageBeanHandlerGui<TT;>;"
    iput p1, p0, Lcom/unisound/vui/message/MessageBeanHandlerGui;->duration:I

    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/unisound/vui/message/MessageBeanHandlerGui;, "Lcom/unisound/vui/message/MessageBeanHandlerGui<TT;>;"
    iput-object p1, p0, Lcom/unisound/vui/message/MessageBeanHandlerGui;->extra:Ljava/lang/String;

    return-void
.end method

.method public setSessionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionName"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/unisound/vui/message/MessageBeanHandlerGui;, "Lcom/unisound/vui/message/MessageBeanHandlerGui<TT;>;"
    iput-object p1, p0, Lcom/unisound/vui/message/MessageBeanHandlerGui;->sessionName:Ljava/lang/String;

    return-void
.end method

.method public setVoiceTip(Lcom/unisound/vui/message/VoiceTip;)V
    .locals 0
    .param p1, "voiceTip"    # Lcom/unisound/vui/message/VoiceTip;

    .prologue
    .local p0, "this":Lcom/unisound/vui/message/MessageBeanHandlerGui;, "Lcom/unisound/vui/message/MessageBeanHandlerGui<TT;>;"
    iput-object p1, p0, Lcom/unisound/vui/message/MessageBeanHandlerGui;->voiceTip:Lcom/unisound/vui/message/VoiceTip;

    return-void
.end method
