.class Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler$1;
.super Ljava/lang/Object;
.source "PhicommBindStatusHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->enterASR(Lcom/unisound/vui/engine/ANTHandlerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;

    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->access$000(Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;)V

    .line 56
    return-void
.end method
