.class final synthetic Lcom/phicomm/speaker/presenter/yanry/confignet/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;

.field private final b:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/y;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/y;->b:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/y;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/y;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->b(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
