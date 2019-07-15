.class Lcom/unisound/lib/UnisTimeMgrAssistant$3;
.super Ljava/lang/Object;
.source "UnisTimeMgrAssistant.java"

# interfaces
.implements Lcom/unisound/lib/net/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/UnisTimeMgrAssistant;->getAllalarmData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/lib/UnisTimeMgrAssistant;

.field final synthetic val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;


# direct methods
.method constructor <init>(Lcom/unisound/lib/UnisTimeMgrAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/unisound/lib/UnisTimeMgrAssistant$3;->this$0:Lcom/unisound/lib/UnisTimeMgrAssistant;

    iput-object p2, p0, Lcom/unisound/lib/UnisTimeMgrAssistant$3;->val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1

    const-string v0, "errorMessage"

    .line 131
    invoke-static {v0, p2}, Lcom/unisound/lib/utils/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object p2, p0, Lcom/unisound/lib/UnisTimeMgrAssistant$3;->val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;

    invoke-interface {p2, p1}, Lcom/unisound/lib/callback/HttpDataCallback;->onFailed(I)V

    return-void
.end method

.method public onSuccess(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/unisound/lib/UnisTimeMgrAssistant$3;->this$0:Lcom/unisound/lib/UnisTimeMgrAssistant;

    iget-object v1, p0, Lcom/unisound/lib/UnisTimeMgrAssistant$3;->val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;

    invoke-static {v0, p1, v1}, Lcom/unisound/lib/UnisTimeMgrAssistant;->access$200(Lcom/unisound/lib/UnisTimeMgrAssistant;Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method
