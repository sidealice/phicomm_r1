.class Lcom/unisound/lib/UnisDeviceAssistant$8;
.super Ljava/lang/Object;
.source "UnisDeviceAssistant.java"

# interfaces
.implements Lcom/unisound/lib/net/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/UnisDeviceAssistant;->bindDevices(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/lib/UnisDeviceAssistant;


# direct methods
.method constructor <init>(Lcom/unisound/lib/UnisDeviceAssistant;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/unisound/lib/UnisDeviceAssistant$8;->this$0:Lcom/unisound/lib/UnisDeviceAssistant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 2

    const-string v0, "errorMessage"

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "---->"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/unisound/lib/utils/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object p2, p0, Lcom/unisound/lib/UnisDeviceAssistant$8;->this$0:Lcom/unisound/lib/UnisDeviceAssistant;

    invoke-static {p2, p1}, Lcom/unisound/lib/UnisDeviceAssistant;->access$500(Lcom/unisound/lib/UnisDeviceAssistant;I)V

    return-void
.end method

.method public onSuccess(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant$8;->this$0:Lcom/unisound/lib/UnisDeviceAssistant;

    invoke-static {v0, p1}, Lcom/unisound/lib/UnisDeviceAssistant;->access$400(Lcom/unisound/lib/UnisDeviceAssistant;Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V

    return-void
.end method
