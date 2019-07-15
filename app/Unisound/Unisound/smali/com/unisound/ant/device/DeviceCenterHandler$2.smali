.class Lcom/unisound/ant/device/DeviceCenterHandler$2;
.super Ljava/lang/Object;
.source "DeviceCenterHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/ant/device/DeviceCenterHandler;->userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/ant/device/DeviceCenterHandler;

.field final synthetic val$evt:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/unisound/ant/device/DeviceCenterHandler;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/ant/device/DeviceCenterHandler;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/unisound/ant/device/DeviceCenterHandler$2;->this$0:Lcom/unisound/ant/device/DeviceCenterHandler;

    iput-object p2, p0, Lcom/unisound/ant/device/DeviceCenterHandler$2;->val$evt:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 201
    iget-object v0, p0, Lcom/unisound/ant/device/DeviceCenterHandler$2;->val$evt:Ljava/lang/Object;

    check-cast v0, Llogreport/FullLog;

    .line 202
    .local v0, "fullLog":Llogreport/FullLog;
    invoke-virtual {v0}, Llogreport/FullLog;->getNlu()Lnluparser/scheme/NLU;

    move-result-object v4

    invoke-virtual {v4}, Lnluparser/scheme/NLU;->getAsrResult()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/unisound/ant/device/DeviceCenterHandler$2;->this$0:Lcom/unisound/ant/device/DeviceCenterHandler;

    invoke-static {v4}, Lcom/unisound/ant/device/DeviceCenterHandler;->access$000(Lcom/unisound/ant/device/DeviceCenterHandler;)Lnluparser/MixtureProcessor;

    move-result-object v4

    invoke-virtual {v4, v2}, Lnluparser/MixtureProcessor;->from(Ljava/lang/String;)Lnluparser/scheme/Mixture;

    move-result-object v1

    .line 204
    .local v1, "mixtureData":Lnluparser/scheme/Mixture;
    invoke-virtual {v0}, Llogreport/FullLog;->getTtsData()Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "ttsData":Ljava/lang/String;
    const-string v4, "<py>[\\d|\\w]+</py>"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 207
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lnluparser/scheme/Mixture;->getLocalASRList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 208
    invoke-virtual {v1, v3}, Lnluparser/scheme/Mixture;->setTtsDataValue(Ljava/lang/String;)V

    .line 209
    iget-object v4, p0, Lcom/unisound/ant/device/DeviceCenterHandler$2;->this$0:Lcom/unisound/ant/device/DeviceCenterHandler;

    const-string v5, "offlineAsrLog"

    invoke-static {v4, v1, v5}, Lcom/unisound/ant/device/DeviceCenterHandler;->access$100(Lcom/unisound/ant/device/DeviceCenterHandler;Lnluparser/scheme/Mixture;Ljava/lang/String;)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lnluparser/scheme/Mixture;->getNluList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 211
    invoke-virtual {v1, v3}, Lnluparser/scheme/Mixture;->setTtsDataValue(Ljava/lang/String;)V

    .line 212
    iget-object v4, p0, Lcom/unisound/ant/device/DeviceCenterHandler$2;->this$0:Lcom/unisound/ant/device/DeviceCenterHandler;

    const-string v5, "onlineAsrLog"

    invoke-static {v4, v1, v5}, Lcom/unisound/ant/device/DeviceCenterHandler;->access$100(Lcom/unisound/ant/device/DeviceCenterHandler;Lnluparser/scheme/Mixture;Ljava/lang/String;)V

    goto :goto_0
.end method
