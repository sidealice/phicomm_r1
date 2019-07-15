.class Lcom/phicomm/speaker/model/confignet/a$1;
.super Landroid/content/BroadcastReceiver;
.source "BleClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/model/confignet/a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/model/confignet/a;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/model/confignet/a;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/phicomm/speaker/model/confignet/a$1;->a:Lcom/phicomm/speaker/model/confignet/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_0

    const-string p1, "bluetooth is turned on."

    .line 73
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object p1, p0, Lcom/phicomm/speaker/model/confignet/a$1;->a:Lcom/phicomm/speaker/model/confignet/a;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/model/confignet/a;->a(Z)V

    goto :goto_0

    :cond_0
    const/16 p2, 0xa

    if-ne p1, p2, :cond_1

    const-string p1, "bluetooth is turned off."

    .line 76
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object p1, p0, Lcom/phicomm/speaker/model/confignet/a$1;->a:Lcom/phicomm/speaker/model/confignet/a;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/confignet/a;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method
