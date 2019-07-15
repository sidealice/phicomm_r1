.class Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder$1;
.super Ljava/lang/Object;
.source "ANTServiceBinder.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;->initMode(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Lcom/unisound/vui/bootstrap/NativeBootstrap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder$1;->this$0:Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/unisound/vui/bootstrap/NativeBootstrap;)V
    .locals 2
    .param p1, "nativeBootstrap"    # Lcom/unisound/vui/bootstrap/NativeBootstrap;

    .prologue
    .line 82
    const-string v0, "MainActivity"

    const-string v1, "ANTServiceBinder"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/unisound/vui/bootstrap/NativeBootstrap;->init()V

    .line 84
    iget-object v0, p0, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder$1;->this$0:Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;->access$002(Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;Z)Z

    .line 85
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 79
    check-cast p1, Lcom/unisound/vui/bootstrap/NativeBootstrap;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder$1;->call(Lcom/unisound/vui/bootstrap/NativeBootstrap;)V

    return-void
.end method
