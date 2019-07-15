.class public Lcom/huawei/hms/api/internal/IPCTransport;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/support/api/transport/DatagramTransport;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/huawei/hms/core/aidl/IMessageEntity;

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/huawei/hms/core/aidl/IMessageEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/huawei/hms/core/aidl/IMessageEntity;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/huawei/hms/core/aidl/IMessageEntity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/api/internal/IPCTransport;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/hms/api/internal/IPCTransport;->b:Lcom/huawei/hms/core/aidl/IMessageEntity;

    iput-object p3, p0, Lcom/huawei/hms/api/internal/IPCTransport;->c:Ljava/lang/Class;

    return-void
.end method

.method private a(Lcom/huawei/hms/support/api/client/ApiClient;Lcom/huawei/hms/core/aidl/c;)I
    .locals 4

    new-instance v0, Lcom/huawei/hms/core/aidl/a;

    iget-object v1, p0, Lcom/huawei/hms/api/internal/IPCTransport;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/huawei/hms/core/aidl/a;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/huawei/hms/core/aidl/e;

    invoke-direct {v1}, Lcom/huawei/hms/core/aidl/e;-><init>()V

    iget-object v2, p0, Lcom/huawei/hms/api/internal/IPCTransport;->b:Lcom/huawei/hms/core/aidl/IMessageEntity;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/huawei/hms/core/aidl/e;->a(Lcom/huawei/hms/core/aidl/IMessageEntity;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hms/core/aidl/a;->a(Landroid/os/Bundle;)Lcom/huawei/hms/core/aidl/a;

    new-instance v2, Lcom/huawei/hms/core/aidl/RequestHeader;

    invoke-direct {v2}, Lcom/huawei/hms/core/aidl/RequestHeader;-><init>()V

    invoke-interface {p1}, Lcom/huawei/hms/support/api/client/ApiClient;->getAppID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/huawei/hms/core/aidl/RequestHeader;->appId:Ljava/lang/String;

    invoke-interface {p1}, Lcom/huawei/hms/support/api/client/ApiClient;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/huawei/hms/core/aidl/RequestHeader;->packageName:Ljava/lang/String;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/huawei/hms/core/aidl/e;->a(Lcom/huawei/hms/core/aidl/IMessageEntity;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/hms/core/aidl/a;->b:Landroid/os/Bundle;

    :try_start_0
    check-cast p1, Lcom/huawei/hms/api/internal/b;

    invoke-virtual {p1}, Lcom/huawei/hms/api/internal/b;->c()Lcom/huawei/hms/core/aidl/d;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lcom/huawei/hms/core/aidl/d;->a(Lcom/huawei/hms/core/aidl/a;Lcom/huawei/hms/core/aidl/c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    const p1, 0x3611c819

    return p1
.end method


# virtual methods
.method public final a(Lcom/huawei/hms/support/api/client/ApiClient;Lcom/huawei/hms/support/api/transport/DatagramTransport$a;)V
    .locals 2

    new-instance v0, Lcom/huawei/hms/api/internal/h;

    iget-object v1, p0, Lcom/huawei/hms/api/internal/IPCTransport;->c:Ljava/lang/Class;

    invoke-direct {v0, v1, p2}, Lcom/huawei/hms/api/internal/h;-><init>(Ljava/lang/Class;Lcom/huawei/hms/support/api/transport/DatagramTransport$a;)V

    invoke-direct {p0, p1, v0}, Lcom/huawei/hms/api/internal/IPCTransport;->a(Lcom/huawei/hms/support/api/client/ApiClient;Lcom/huawei/hms/core/aidl/c;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/huawei/hms/support/api/transport/DatagramTransport$a;->a(ILcom/huawei/hms/core/aidl/IMessageEntity;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/huawei/hms/support/api/client/ApiClient;Lcom/huawei/hms/support/api/transport/DatagramTransport$a;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/api/internal/IPCTransport;->a(Lcom/huawei/hms/support/api/client/ApiClient;Lcom/huawei/hms/support/api/transport/DatagramTransport$a;)V

    return-void
.end method
