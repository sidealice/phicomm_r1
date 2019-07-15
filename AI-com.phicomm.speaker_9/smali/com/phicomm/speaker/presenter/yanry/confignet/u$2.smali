.class Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;
.super Lcom/phicomm/speaker/model/confignet/a;
.source "ConfigByBlePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/yanry/confignet/u;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-direct {p0}, Lcom/phicomm/speaker/model/confignet/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 5

    .line 232
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 233
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    sget-object v2, Lcom/phicomm/speaker/constants/yanry/a;->d:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 234
    array-length p1, v0

    if-ne p1, v3, :cond_0

    .line 235
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->f(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/model/common/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/model/common/f;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 236
    const-class p1, Lcom/phicomm/speaker/model/common/d;

    invoke-static {p1}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/model/common/d;

    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/confignet/ab;

    invoke-direct {v1, p0, v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/ab;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;[B)V

    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/model/common/d;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p1, "invalid connectivity value: %s"

    .line 275
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v1, "unhandled raw characteristic(%s): %s"

    const/4 v4, 0x2

    .line 278
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {v1, v4}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected a(Lcom/phicomm/speaker/constants/yanry/ConnectionState;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {v0, p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a(Lcom/phicomm/speaker/presenter/yanry/confignet/u;Lcom/phicomm/speaker/constants/yanry/ConnectionState;)Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    .line 108
    sget-object v0, Lcom/phicomm/speaker/constants/yanry/ConnectionState;->Disconnected:Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    const/4 v1, -0x1

    if-ne p1, v0, :cond_0

    .line 109
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1, v1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a(Lcom/phicomm/speaker/presenter/yanry/confignet/u;B)B

    .line 111
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->f(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/model/common/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/model/common/f;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a()Lcom/phicomm/speaker/constants/yanry/BluetoothState;

    move-result-object p1

    sget-object v0, Lcom/phicomm/speaker/constants/yanry/BluetoothState;->ENABLE:Lcom/phicomm/speaker/constants/yanry/BluetoothState;

    if-ne p1, v0, :cond_1

    const-string p1, "Unexpected disconnected!! Reconnecting..."

    const/4 v0, 0x0

    .line 112
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->c()V

    goto :goto_0

    .line 115
    :cond_0
    sget-object v0, Lcom/phicomm/speaker/constants/yanry/ConnectionState;->Connected:Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    if-ne p1, v0, :cond_1

    .line 116
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1, v1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a(Lcom/phicomm/speaker/presenter/yanry/confignet/u;B)B

    :cond_1
    :goto_0
    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;)V"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->f(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/model/common/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/common/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-class v0, Lcom/phicomm/speaker/model/common/d;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/model/common/d;

    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/confignet/z;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/z;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/common/d;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected a(Ljava/util/UUID;Ljava/lang/String;)V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->f(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/model/common/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/common/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const-class v0, Lcom/phicomm/speaker/model/common/d;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/model/common/d;

    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/confignet/aa;

    invoke-direct {v1, p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/confignet/aa;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;Ljava/util/UUID;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/common/d;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected a(Z)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->f(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/model/common/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/common/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->c()V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method final synthetic a([B)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->f(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/model/common/f;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/confignet/ac;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/ac;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;[B)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/common/f;->a(Lcom/phicomm/speaker/b/d;)V

    return-void
.end method

.method final synthetic a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    const/4 v2, 0x5

    const-string v3, "receive device info"

    invoke-static {v1, v2, v3}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a(Lcom/phicomm/speaker/presenter/yanry/confignet/u;ILjava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {v1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->d(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/b/h;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {v1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->d(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/b/h;

    move-result-object v1

    invoke-static {p1}, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->fromJson(Ljava/lang/String;)Lcom/phicomm/speaker/bean/confignet/DeviceInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/phicomm/speaker/b/h;->a(Lcom/phicomm/speaker/bean/confignet/DeviceInfo;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 215
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const-string v1, "data error: %s."

    const/4 v2, 0x1

    .line 216
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v1, v3}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->d(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/b/h;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 218
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->d(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/b/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/phicomm/speaker/b/h;->b()V

    :cond_1
    return v2
.end method

.method final synthetic b(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    const-string v0, "discover device: %s."

    const/4 v1, 0x1

    .line 126
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->c(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->c(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/b/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/phicomm/speaker/b/f;->b()V

    .line 132
    :cond_0
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 133
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    const-string v0, "connect fail on initialization error."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a(Lcom/phicomm/speaker/presenter/yanry/confignet/u;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method final synthetic b(Ljava/util/List;)V
    .locals 4

    .line 147
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 148
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v2, Lcom/phicomm/speaker/constants/yanry/a;->a:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)I

    move-result p1

    const/4 v0, 0x0

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 170
    :pswitch_0
    sget-object p1, Lcom/phicomm/speaker/constants/yanry/a;->a:Ljava/util/UUID;

    sget-object v1, Lcom/phicomm/speaker/constants/yanry/a;->d:Ljava/util/UUID;

    invoke-virtual {p0, p1, v1, v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :pswitch_1
    sget-object p1, Lcom/phicomm/speaker/constants/yanry/a;->a:Ljava/util/UUID;

    sget-object v1, Lcom/phicomm/speaker/constants/yanry/a;->d:Ljava/util/UUID;

    invoke-virtual {p0, p1, v1, v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)V

    .line 165
    sget-object p1, Lcom/phicomm/speaker/constants/yanry/a;->a:Ljava/util/UUID;

    sget-object v0, Lcom/phicomm/speaker/constants/yanry/a;->c:Ljava/util/UUID;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {v1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->h(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :pswitch_2
    const-class p1, Lcom/phicomm/speaker/presenter/yanry/confignet/af;

    invoke-static {p1}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/presenter/yanry/confignet/af;

    .line 159
    sget-object v0, Lcom/phicomm/speaker/constants/yanry/a;->a:Ljava/util/UUID;

    sget-object v1, Lcom/phicomm/speaker/constants/yanry/a;->b:Ljava/util/UUID;

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/af;->a()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/phicomm/speaker/presenter/yanry/confignet/af;->a(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->f(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/model/common/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/common/f;->a(Lcom/phicomm/speaker/b/d;)V

    .line 152
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->c(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/b/f;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 153
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->c(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/b/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/phicomm/speaker/b/f;->d()V

    :cond_2
    :goto_0
    return-void

    .line 178
    :cond_3
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    const-string v0, "service (%s) not found."

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/phicomm/speaker/constants/yanry/a;->a:Ljava/util/UUID;

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a(Lcom/phicomm/speaker/presenter/yanry/confignet/u;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final synthetic b(Ljava/util/UUID;Ljava/lang/String;)V
    .locals 2

    .line 187
    sget-object v0, Lcom/phicomm/speaker/constants/yanry/a;->b:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 189
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->e(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)B

    move-result p1

    if-ne p1, v1, :cond_0

    .line 191
    sget-object p1, Lcom/phicomm/speaker/constants/yanry/a;->a:Ljava/util/UUID;

    sget-object v0, Lcom/phicomm/speaker/constants/yanry/a;->d:Ljava/util/UUID;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)V

    .line 193
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->f(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/model/common/f;

    move-result-object p1

    new-instance v0, Lcom/phicomm/speaker/presenter/yanry/confignet/ad;

    invoke-direct {v0, p0, p2}, Lcom/phicomm/speaker/presenter/yanry/confignet/ad;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/common/f;->a(Lcom/phicomm/speaker/b/d;)V

    goto :goto_0

    .line 205
    :cond_1
    sget-object v0, Lcom/phicomm/speaker/constants/yanry/a;->c:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1, v1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a(Lcom/phicomm/speaker/presenter/yanry/confignet/u;B)B

    .line 207
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->f(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/model/common/f;

    move-result-object p1

    new-instance v0, Lcom/phicomm/speaker/presenter/yanry/confignet/ae;

    invoke-direct {v0, p0, p2}, Lcom/phicomm/speaker/presenter/yanry/confignet/ae;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/common/f;->a(Lcom/phicomm/speaker/b/d;)V

    goto :goto_0

    :cond_2
    const-string p2, "unhandled data characteristic: %s"

    const/4 v0, 0x1

    .line 224
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected b(Z)V
    .locals 0

    return-void
.end method

.method final synthetic b(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    .line 195
    :try_start_0
    const-class v1, Lcom/phicomm/speaker/presenter/yanry/confignet/af;

    invoke-static {v1}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/presenter/yanry/confignet/af;

    iget-object v2, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {v2}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->d(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/b/h;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/phicomm/speaker/presenter/yanry/confignet/af;->a(Ljava/lang/String;Lcom/phicomm/speaker/b/h;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 197
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const-string v1, "data error: %s."

    .line 198
    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->d(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/b/h;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->d(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/b/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/phicomm/speaker/b/h;->b()V

    :cond_0
    :goto_0
    return v0
.end method

.method final synthetic b([B)Z
    .locals 5

    .line 238
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->e(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)B

    move-result v0

    .line 239
    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    const/4 v2, 0x0

    aget-byte p1, p1, v2

    invoke-static {v1, p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a(Lcom/phicomm/speaker/presenter/yanry/confignet/u;B)B

    .line 240
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->e(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)B

    move-result p1

    const/16 v1, 0x14

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, v1, :cond_3

    packed-switch p1, :pswitch_data_0

    const-string p1, "config fail: %s->%s."

    .line 263
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->e(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {p1, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->d(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/b/h;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 265
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->d(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/b/h;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->e(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)B

    move-result v0

    invoke-interface {p1, v0}, Lcom/phicomm/speaker/b/h;->a(I)V

    :cond_0
    return v4

    :pswitch_0
    if-ne v0, v3, :cond_2

    const-string p1, "config fail: 2->1"

    .line 250
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->d(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/b/h;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 252
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->d(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/b/h;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->e(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)B

    move-result v0

    invoke-interface {p1, v0}, Lcom/phicomm/speaker/b/h;->a(I)V

    :cond_1
    return v4

    :cond_2
    :pswitch_1
    return v2

    :cond_3
    const-string p1, "config success: %s->%s."

    .line 242
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->e(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {p1, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->d(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/b/h;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 244
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->d(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/b/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/phicomm/speaker/b/h;->d()Z

    .line 246
    :cond_4
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->c()V

    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected g()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->f(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/model/common/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/common/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->g(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/phicomm/speaker/constants/yanry/ConnectionState;->Connected:Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    if-ne v0, v1, :cond_0

    const-string v0, ">>>>> disconnect on connection error!!"

    const/4 v1, 0x0

    .line 292
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->e()V

    :cond_0
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    .line 284
    sget-object p1, Lcom/phicomm/speaker/constants/yanry/a;->e:Ljava/util/UUID;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->f()V

    :cond_0
    return-void
.end method

.method public declared-synchronized onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 3

    monitor-enter p0

    .line 122
    :try_start_0
    iget-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p2}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->f(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/model/common/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/phicomm/speaker/model/common/f;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 124
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "%s_[A-Za-z0-9]{4,4}"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Phicomm_R1"

    aput-object v2, v0, v1

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 125
    const-class p2, Lcom/phicomm/speaker/model/common/d;

    invoke-static {p2}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/phicomm/speaker/model/common/d;

    new-instance p3, Lcom/phicomm/speaker/presenter/yanry/confignet/y;

    invoke-direct {p3, p0, p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/y;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p2, p3}, Lcom/phicomm/speaker/model/common/d;->post(Ljava/lang/Runnable;)Z

    .line 136
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->d()V

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 121
    monitor-exit p0

    throw p1
.end method
