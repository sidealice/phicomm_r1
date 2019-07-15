.class final synthetic Lcom/phicomm/speaker/model/confignet/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/phicomm/speaker/b/d;


# instance fields
.field private final a:Lcom/phicomm/speaker/model/confignet/a;

.field private final b:Landroid/bluetooth/BluetoothGatt;

.field private final c:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/model/confignet/a;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/model/confignet/d;->a:Lcom/phicomm/speaker/model/confignet/a;

    iput-object p2, p0, Lcom/phicomm/speaker/model/confignet/d;->b:Landroid/bluetooth/BluetoothGatt;

    iput-object p3, p0, Lcom/phicomm/speaker/model/confignet/d;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/d;->a:Lcom/phicomm/speaker/model/confignet/a;

    iget-object v1, p0, Lcom/phicomm/speaker/model/confignet/d;->b:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/phicomm/speaker/model/confignet/d;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/model/confignet/a;->a(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    return v0
.end method
