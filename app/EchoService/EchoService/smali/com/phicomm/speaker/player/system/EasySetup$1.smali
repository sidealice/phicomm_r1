.class Lcom/phicomm/speaker/player/system/EasySetup$1;
.super Landroid/content/BroadcastReceiver;
.source "EasySetup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/system/EasySetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/system/EasySetup;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/system/EasySetup;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/phicomm/speaker/player/system/EasySetup$1;->this$0:Lcom/phicomm/speaker/player/system/EasySetup;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 89
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 92
    .local v0, "state":I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/phicomm/speaker/player/system/EasySetup$1;->this$0:Lcom/phicomm/speaker/player/system/EasySetup;

    invoke-static {v1}, Lcom/phicomm/speaker/player/system/EasySetup;->access$000(Lcom/phicomm/speaker/player/system/EasySetup;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 95
    :cond_0
    return-void
.end method
