.class Lcom/unisound/lib/UnisDeviceAssistant$3;
.super Ljava/lang/Object;
.source "UnisDeviceAssistant.java"

# interfaces
.implements Lcom/unisound/lib/net/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/UnisDeviceAssistant;->getChatLog(Lcom/unisound/lib/msgcenter/bean/LogReqInfo;Lcom/unisound/lib/devices/callback/ILogMessageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/lib/UnisDeviceAssistant;

.field final synthetic val$iLogMessageCallback:Lcom/unisound/lib/devices/callback/ILogMessageCallback;


# direct methods
.method constructor <init>(Lcom/unisound/lib/UnisDeviceAssistant;Lcom/unisound/lib/devices/callback/ILogMessageCallback;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/unisound/lib/UnisDeviceAssistant$3;->this$0:Lcom/unisound/lib/UnisDeviceAssistant;

    iput-object p2, p0, Lcom/unisound/lib/UnisDeviceAssistant$3;->val$iLogMessageCallback:Lcom/unisound/lib/devices/callback/ILogMessageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1

    const-string v0, "errorMessage"

    .line 188
    invoke-static {v0, p2}, Lcom/unisound/lib/utils/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object p2, p0, Lcom/unisound/lib/UnisDeviceAssistant$3;->val$iLogMessageCallback:Lcom/unisound/lib/devices/callback/ILogMessageCallback;

    invoke-interface {p2, p1}, Lcom/unisound/lib/devices/callback/ILogMessageCallback;->onFailed(I)V

    return-void
.end method

.method public onSuccess(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant$3;->this$0:Lcom/unisound/lib/UnisDeviceAssistant;

    iget-object v1, p0, Lcom/unisound/lib/UnisDeviceAssistant$3;->val$iLogMessageCallback:Lcom/unisound/lib/devices/callback/ILogMessageCallback;

    invoke-static {v0, p1, v1}, Lcom/unisound/lib/UnisDeviceAssistant;->access$300(Lcom/unisound/lib/UnisDeviceAssistant;Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/devices/callback/ILogMessageCallback;)V

    return-void
.end method
