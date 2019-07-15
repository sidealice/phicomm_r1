.class Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;
.super Ljava/lang/Object;
.source "PhicommSettingHandler.java"

# interfaces
.implements Landroid/os/MessageDispatchManager$MessageReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhicommIotReceiver"
.end annotation


# instance fields
.field private mIoTRunnable:Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$IoTRunnable;

.field private mNLU:Lnluparser/scheme/NLU;

.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;Lnluparser/scheme/NLU;)V
    .locals 0
    .param p2, "nlu"    # Lnluparser/scheme/NLU;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;->this$0:Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;->mNLU:Lnluparser/scheme/NLU;

    .line 244
    return-void
.end method


# virtual methods
.method public notifyMsg(IIILjava/lang/Object;)V
    .locals 7
    .param p1, "what"    # I
    .param p2, "domain"    # I
    .param p3, "subdomain"    # I
    .param p4, "data"    # Ljava/lang/Object;

    .prologue
    .line 254
    const-string v4, "PhicommSettingHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PhicommIotReceiver recevied "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;->this$0:Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;

    invoke-static {v4}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->access$000(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;->mIoTRunnable:Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$IoTRunnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 256
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;->this$0:Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;

    invoke-static {v4, p0}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->access$100(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;)V

    .line 258
    :try_start_0
    check-cast p4, Landroid/os/ParcelableUtil;

    .end local p4    # "data":Ljava/lang/Object;
    invoke-virtual {p4}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 259
    .local v0, "dataJson":Ljava/lang/String;
    const-class v4, Lcom/phicomm/speaker/device/data/PhicommIotResponse;

    .line 260
    invoke-static {v0, v4}, Lcom/unisound/vui/util/JsonTool;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phicomm/speaker/device/data/PhicommIotResponse;

    .line 261
    .local v2, "result":Lcom/phicomm/speaker/device/data/PhicommIotResponse;
    invoke-virtual {v2}, Lcom/phicomm/speaker/device/data/PhicommIotResponse;->getText()Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "text":Ljava/lang/String;
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;->this$0:Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;

    invoke-static {v4}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->access$200(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;)Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/unisound/vui/engine/ANTEngine;->playTTS(Ljava/lang/String;)V

    .line 263
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;->this$0:Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;->mNLU:Lnluparser/scheme/NLU;

    invoke-static {v4, v5, v3}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->access$300(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;Lnluparser/scheme/NLU;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v0    # "dataJson":Ljava/lang/String;
    .end local v2    # "result":Lcom/phicomm/speaker/device/data/PhicommIotResponse;
    .end local v3    # "text":Ljava/lang/String;
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "PhicommSettingHandler"

    const-string v5, "received iot message from phicomm, but an error has occurred when processing : "

    invoke-static {v4, v5, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setIoTRunnable(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$IoTRunnable;)V
    .locals 0
    .param p1, "ioTRunnable"    # Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$IoTRunnable;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;->mIoTRunnable:Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$IoTRunnable;

    .line 248
    return-void
.end method
