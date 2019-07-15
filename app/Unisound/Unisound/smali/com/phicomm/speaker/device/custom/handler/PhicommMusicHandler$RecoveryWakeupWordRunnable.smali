.class Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler$RecoveryWakeupWordRunnable;
.super Ljava/lang/Object;
.source "PhicommMusicHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecoveryWakeupWordRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler$RecoveryWakeupWordRunnable;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;
    .param p2, "x1"    # Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler$1;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler$RecoveryWakeupWordRunnable;-><init>(Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler$RecoveryWakeupWordRunnable;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler$RecoveryWakeupWordRunnable;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;

    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->access$100(Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;)Lcom/unisound/vui/engine/ANTHandlerContext;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->access$200(Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 121
    return-void
.end method
