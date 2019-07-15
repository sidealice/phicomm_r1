.class Lcom/unisound/vui/engine/NativeANTEngine$2;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/engine/NativeANTEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unisound/vui/engine/NativeANTEngine;


# direct methods
.method constructor <init>(Lcom/unisound/vui/engine/NativeANTEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/engine/NativeANTEngine$2;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-string v0, "NativeANTEngine"

    const-string v1, "try to initSpeechUnderstanderWithDeviceId again"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$2;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->c(Lcom/unisound/vui/engine/NativeANTEngine;)V

    return-void
.end method
