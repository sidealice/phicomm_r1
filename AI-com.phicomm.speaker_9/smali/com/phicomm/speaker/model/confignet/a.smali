.class public abstract Lcom/phicomm/speaker/model/confignet/a;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BleClient.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# instance fields
.field private a:Landroid/bluetooth/BluetoothAdapter;

.field private b:Landroid/content/Context;

.field private c:Landroid/bluetooth/BluetoothGatt;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/UUID;",
            "Ljava/io/ByteArrayOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/UUID;",
            "Ljava/util/LinkedList<",
            "Ljava/io/ByteArrayInputStream;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Landroid/content/BroadcastReceiver;

.field private g:Z

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            "Lcom/phicomm/speaker/model/common/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->e:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->d:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->h:Ljava/util/HashMap;

    return-void
.end method

.method private b(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3

    .line 171
    new-instance v0, Lcom/phicomm/speaker/model/confignet/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/phicomm/speaker/model/confignet/d;-><init>(Lcom/phicomm/speaker/model/confignet/a;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    new-instance p1, Lcom/phicomm/speaker/model/confignet/e;

    invoke-direct {p1, p0}, Lcom/phicomm/speaker/model/confignet/e;-><init>(Lcom/phicomm/speaker/model/confignet/a;)V

    const/4 p2, 0x5

    const-wide/16 v1, 0x12c

    invoke-static {p2, v1, v2, v0, p1}, Lcom/phicomm/speaker/f/a/a;->a(IJLcom/phicomm/speaker/b/d;Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/phicomm/speaker/model/common/f;
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/model/common/f;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/phicomm/speaker/model/confignet/a$2;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/model/confignet/a$2;-><init>(Lcom/phicomm/speaker/model/confignet/a;)V

    .line 194
    iget-object v1, p0, Lcom/phicomm/speaker/model/confignet/a;->h:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private j()V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 234
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 235
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/model/common/f;

    .line 236
    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/model/common/f;->a(Lcom/phicomm/speaker/b/d;)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 239
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    const-string v0, "close gatt."

    const/4 v1, 0x0

    .line 240
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 242
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 243
    iput-object v2, p0, Lcom/phicomm/speaker/model/confignet/a;->c:Landroid/bluetooth/BluetoothGatt;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Lcom/phicomm/speaker/constants/yanry/BluetoothState;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->a:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/phicomm/speaker/constants/yanry/BluetoothState;->ENABLE:Lcom/phicomm/speaker/constants/yanry/BluetoothState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/phicomm/speaker/constants/yanry/BluetoothState;->DISABLE:Lcom/phicomm/speaker/constants/yanry/BluetoothState;

    :goto_0
    return-object v0

    .line 89
    :cond_1
    sget-object v0, Lcom/phicomm/speaker/constants/yanry/BluetoothState;->NOT_EXIST:Lcom/phicomm/speaker/constants/yanry/BluetoothState;

    return-object v0
.end method

.method protected abstract a(Landroid/bluetooth/BluetoothGattCharacteristic;)V
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .line 58
    iput-object p1, p0, Lcom/phicomm/speaker/model/confignet/a;->b:Landroid/content/Context;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "init."

    .line 60
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "bluetooth"

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 62
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->a:Landroid/bluetooth/BluetoothAdapter;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->a:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    const-string p1, "BLE is unsupported!"

    .line 65
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/phicomm/speaker/model/confignet/a;->g:Z

    .line 68
    new-instance v0, Lcom/phicomm/speaker/model/confignet/a$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/model/confignet/a$1;-><init>(Lcom/phicomm/speaker/model/confignet/a;)V

    iput-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->f:Landroid/content/BroadcastReceiver;

    .line 81
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->f:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method protected abstract a(Lcom/phicomm/speaker/constants/yanry/ConnectionState;)V
.end method

.method protected abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/util/UUID;Ljava/lang/String;)V
.end method

.method public a(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)V
    .locals 6

    .line 124
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "gatt is null."

    .line 125
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-virtual {p0}, Lcom/phicomm/speaker/model/confignet/a;->g()V

    goto/16 :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string p2, "get service fail: %s"

    .line 130
    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    invoke-static {p2, p3}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p0}, Lcom/phicomm/speaker/model/confignet/a;->g()V

    goto/16 :goto_0

    .line 133
    :cond_1
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "get characteristic fail: %s"

    .line 135
    new-array p3, v2, [Ljava/lang/Object;

    aput-object p2, p3, v1

    invoke-static {p1, p3}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-virtual {p0}, Lcom/phicomm/speaker/model/confignet/a;->g()V

    goto/16 :goto_0

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1, v2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p3, :cond_3

    const-string p2, "trying to read characteristic: %s."

    .line 139
    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    aput-object v0, p3, v1

    invoke-static {p2, p3}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x5

    const-wide/16 v0, 0x12c

    .line 140
    new-instance p3, Lcom/phicomm/speaker/model/confignet/b;

    invoke-direct {p3, p0, p1}, Lcom/phicomm/speaker/model/confignet/b;-><init>(Lcom/phicomm/speaker/model/confignet/a;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    new-instance p1, Lcom/phicomm/speaker/model/confignet/c;

    invoke-direct {p1, p0}, Lcom/phicomm/speaker/model/confignet/c;-><init>(Lcom/phicomm/speaker/model/confignet/a;)V

    invoke-static {p2, v0, v1, p3, p1}, Lcom/phicomm/speaker/f/a/a;->a(IJLcom/phicomm/speaker/b/d;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    const-string v0, "sending data (%s): %s"

    const/4 v3, 0x2

    .line 145
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    aput-object p3, v3, v2

    invoke-static {v0, v3}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v1, "UTF-8"

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 148
    monitor-enter p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :try_start_1
    iget-object p3, p0, Lcom/phicomm/speaker/model/confignet/a;->e:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/LinkedList;

    if-nez p3, :cond_4

    .line 151
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    .line 152
    iget-object v1, p0, Lcom/phicomm/speaker/model/confignet/a;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_4
    invoke-virtual {p3, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 155
    sget-object p3, Lcom/phicomm/speaker/constants/yanry/a;->k:[B

    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 156
    iget-object p3, p0, Lcom/phicomm/speaker/model/confignet/a;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0, p3, p1}, Lcom/phicomm/speaker/model/confignet/a;->b(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 157
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 159
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    const-string p1, "set characteristic notification fail."

    .line 163
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-virtual {p0}, Lcom/phicomm/speaker/model/confignet/a;->g()V

    :goto_0
    return-void
.end method

.method protected abstract a(Z)V
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->a:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 114
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string v0, "Trying to create a new connection."

    .line 115
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    new-instance v0, Lcom/phicomm/speaker/model/confignet/BleConnectionCompat;

    iget-object v2, p0, Lcom/phicomm/speaker/model/confignet/a;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/phicomm/speaker/model/confignet/BleConnectionCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1, p0}, Lcom/phicomm/speaker/model/confignet/BleConnectionCompat;->a(Landroid/bluetooth/BluetoothDevice;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/model/confignet/a;->c:Landroid/bluetooth/BluetoothGatt;

    .line 118
    iget-object p1, p0, Lcom/phicomm/speaker/model/confignet/a;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method final synthetic a(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 2

    .line 172
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 173
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/model/confignet/a;->c(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/phicomm/speaker/model/common/f;

    move-result-object p1

    const-wide/16 v0, 0x1f40

    invoke-virtual {p1, v0, v1}, Lcom/phicomm/speaker/model/common/f;->a(J)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    return-void
.end method

.method protected abstract b(Z)V
.end method

.method final synthetic b(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "start BLE scanning..."

    .line 98
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 99
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/model/confignet/a;->b(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "start scanning fail!"

    .line 101
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    const-string v0, "stop BLE scanning."

    const/4 v1, 0x0

    .line 107
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/model/confignet/a;->b(Z)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    const-string v0, "disconnect gatt."

    const/4 v1, 0x0

    .line 207
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 217
    invoke-direct {p0}, Lcom/phicomm/speaker/model/confignet/a;->j()V

    .line 218
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->f:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/phicomm/speaker/model/confignet/a;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->f:Landroid/content/BroadcastReceiver;

    .line 221
    iput-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->b:Landroid/content/Context;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->a:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_2

    .line 224
    iget-boolean v0, p0, Lcom/phicomm/speaker/model/confignet/a;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0

    .line 226
    :cond_1
    iget-boolean v0, p0, Lcom/phicomm/speaker/model/confignet/a;->g:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected abstract g()V
.end method

.method final synthetic h()V
    .locals 2

    const-string v0, "write characteristic fail."

    const/4 v1, 0x0

    .line 178
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    invoke-virtual {p0}, Lcom/phicomm/speaker/model/confignet/a;->g()V

    return-void
.end method

.method final synthetic i()V
    .locals 2

    const-string v0, "read characteristic fail."

    const/4 v1, 0x0

    .line 141
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-virtual {p0}, Lcom/phicomm/speaker/model/confignet/a;->g()V

    return-void
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 6

    .line 326
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/a;->c:Landroid/bluetooth/BluetoothGatt;

    if-ne p1, v0, :cond_2

    .line 327
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    .line 328
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    const-string v1, "receive %s: %s"

    const/4 v2, 0x2

    .line 329
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    sget-object v1, Lcom/phicomm/speaker/constants/yanry/a;->k:[B

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    iget-object p1, p0, Lcom/phicomm/speaker/model/confignet/a;->d:Ljava/util/HashMap;

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/model/confignet/a;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    iget-object p2, p0, Lcom/phicomm/speaker/model/confignet/a;->d:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/ByteArrayOutputStream;

    .line 334
    array-length v1, p1

    sub-int/2addr v1, v4

    invoke-virtual {p2, p1, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 335
    aget-byte p1, p1, v5

    if-nez p1, :cond_2

    :try_start_0
    const-string p1, "UTF-8"

    .line 337
    invoke-virtual {p2, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "receive data:%s "

    .line 338
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {p2, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    invoke-virtual {p0, v0, p1}, Lcom/phicomm/speaker/model/confignet/a;->a(Ljava/util/UUID;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 341
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 343
    :goto_0
    iget-object p1, p0, Lcom/phicomm/speaker/model/confignet/a;->d:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 346
    :cond_1
    invoke-virtual {p0, p2}, Lcom/phicomm/speaker/model/confignet/a;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 6

    .line 286
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/model/confignet/a;->c(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/phicomm/speaker/model/common/f;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lcom/phicomm/speaker/model/common/f;->c()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    .line 288
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/common/f;->a(Lcom/phicomm/speaker/b/d;)V

    if-nez p3, :cond_5

    .line 290
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 291
    monitor-enter v0

    .line 292
    :try_start_0
    iget-object p3, p0, Lcom/phicomm/speaker/model/confignet/a;->e:Ljava/util/HashMap;

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/LinkedList;

    if-eqz p3, :cond_4

    .line 294
    invoke-virtual {p3}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/io/ByteArrayInputStream;

    if-eqz p3, :cond_4

    .line 296
    invoke-virtual {p3}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    const/16 v4, 0x13

    if-le v1, v4, :cond_0

    const/16 v1, 0x14

    goto :goto_0

    :cond_0
    add-int/2addr v1, v3

    .line 297
    :goto_0
    new-array v1, v1, [B

    .line 298
    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {p3, v1, v3, v4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 299
    invoke-virtual {p3}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p3

    .line 300
    div-int/lit8 v4, p3, 0x13

    rem-int/lit8 v5, p3, 0x13

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    add-int/2addr v4, v3

    int-to-byte v3, v4

    if-nez v3, :cond_2

    if-eqz v4, :cond_2

    const/16 v3, -0x80

    .line 305
    :cond_2
    aput-byte v3, v1, v2

    if-nez p3, :cond_3

    .line 307
    iget-object p3, p0, Lcom/phicomm/speaker/model/confignet/a;->e:Ljava/util/HashMap;

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_3
    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 311
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/model/confignet/a;->b(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 314
    :cond_4
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    const-string p1, "write characteristic(%s) fail: %s."

    const/4 v0, 0x2

    .line 316
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p2

    aput-object p2, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    invoke-virtual {p0}, Lcom/phicomm/speaker/model/confignet/a;->g()V

    goto :goto_2

    :cond_6
    const-string p1, "receive write characteristic result beyond timeout: %s!"

    .line 320
    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 1

    const/4 p2, 0x0

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 265
    :pswitch_0
    sget-object p1, Lcom/phicomm/speaker/constants/yanry/ConnectionState;->Disconnecting:Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/model/confignet/a;->a(Lcom/phicomm/speaker/constants/yanry/ConnectionState;)V

    goto :goto_0

    :pswitch_1
    const-string p3, "bluetooth is connected."

    .line 251
    new-array v0, p2, [Ljava/lang/Object;

    invoke-static {p3, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    sget-object p3, Lcom/phicomm/speaker/constants/yanry/ConnectionState;->Connected:Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    invoke-virtual {p0, p3}, Lcom/phicomm/speaker/model/confignet/a;->a(Lcom/phicomm/speaker/constants/yanry/ConnectionState;)V

    .line 254
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempting to start service discovery:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 257
    :pswitch_2
    sget-object p1, Lcom/phicomm/speaker/constants/yanry/ConnectionState;->Connecting:Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/model/confignet/a;->a(Lcom/phicomm/speaker/constants/yanry/ConnectionState;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "bluetooth is disconnected."

    .line 260
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    invoke-direct {p0}, Lcom/phicomm/speaker/model/confignet/a;->j()V

    .line 262
    sget-object p1, Lcom/phicomm/speaker/constants/yanry/ConnectionState;->Disconnected:Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/model/confignet/a;->a(Lcom/phicomm/speaker/constants/yanry/ConnectionState;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 275
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p1

    const-string p2, "discover %s services."

    .line 276
    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p2, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/model/confignet/a;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const-string p1, "discover services fail: %s."

    .line 279
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    invoke-static {p1, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    invoke-virtual {p0}, Lcom/phicomm/speaker/model/confignet/a;->g()V

    :goto_0
    return-void
.end method
