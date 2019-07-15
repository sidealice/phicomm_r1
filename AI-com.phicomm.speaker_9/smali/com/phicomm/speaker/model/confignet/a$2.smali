.class Lcom/phicomm/speaker/model/confignet/a$2;
.super Lcom/phicomm/speaker/model/common/f;
.source "BleClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/model/confignet/a;->c(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/phicomm/speaker/model/common/f;
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

    .line 186
    iput-object p1, p0, Lcom/phicomm/speaker/model/confignet/a$2;->a:Lcom/phicomm/speaker/model/confignet/a;

    invoke-direct {p0}, Lcom/phicomm/speaker/model/common/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 190
    iget-object p1, p0, Lcom/phicomm/speaker/model/confignet/a$2;->a:Lcom/phicomm/speaker/model/confignet/a;

    invoke-virtual {p1}, Lcom/phicomm/speaker/model/confignet/a;->g()V

    :cond_0
    return-void
.end method
