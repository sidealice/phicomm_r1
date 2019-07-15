.class final synthetic Lcom/phicomm/speaker/model/confignet/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/phicomm/speaker/b/d;


# instance fields
.field private final a:Lcom/phicomm/speaker/model/confignet/a;

.field private final b:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/model/confignet/a;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/model/confignet/b;->a:Lcom/phicomm/speaker/model/confignet/a;

    iput-object p2, p0, Lcom/phicomm/speaker/model/confignet/b;->b:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/b;->a:Lcom/phicomm/speaker/model/confignet/a;

    iget-object v1, p0, Lcom/phicomm/speaker/model/confignet/b;->b:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/confignet/a;->b(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    return v0
.end method
