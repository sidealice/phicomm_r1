.class Lcom/unisound/lib/UnisTimeMgrAssistant$2;
.super Ljava/lang/Object;
.source "UnisTimeMgrAssistant.java"

# interfaces
.implements Lcom/unisound/lib/net/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/UnisTimeMgrAssistant;->delNote(Ljava/lang/String;Lcom/unisound/lib/time/bean/NoteInfo;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
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

    .line 101
    iput-object p1, p0, Lcom/unisound/lib/UnisTimeMgrAssistant$2;->this$0:Lcom/unisound/lib/UnisTimeMgrAssistant;

    iput-object p2, p0, Lcom/unisound/lib/UnisTimeMgrAssistant$2;->val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1

    const-string v0, "errorMessage"

    .line 107
    invoke-static {v0, p2}, Lcom/unisound/lib/utils/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object p2, p0, Lcom/unisound/lib/UnisTimeMgrAssistant$2;->val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;

    invoke-interface {p2, p1}, Lcom/unisound/lib/callback/HttpDataCallback;->onFailed(I)V

    return-void
.end method

.method public onSuccess(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/unisound/lib/UnisTimeMgrAssistant$2;->val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;

    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    return-void
.end method
