.class public Lcom/baidu/location/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Lcom/baidu/location/a/b;


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/location/a/b;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/a/b;->b:Lcom/baidu/location/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/location/a/b;->c:I

    return-void
.end method

.method public static a()Lcom/baidu/location/a/b;
    .locals 2

    sget-object v1, Lcom/baidu/location/a/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/location/a/b;->b:Lcom/baidu/location/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/a/b;

    invoke-direct {v0}, Lcom/baidu/location/a/b;-><init>()V

    sput-object v0, Lcom/baidu/location/a/b;->b:Lcom/baidu/location/a/b;

    :cond_0
    sget-object v0, Lcom/baidu/location/a/b;->b:Lcom/baidu/location/a/b;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(IILjava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/baidu/location/a/b;->c:I

    if-eq p2, v0, :cond_0

    iput p2, p0, Lcom/baidu/location/a/b;->c:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "loctype"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "diagtype"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "diagmessage"

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v1

    const/16 v2, 0x12f

    invoke-virtual {v1, v0, v2}, Lcom/baidu/location/a/a;->a(Landroid/os/Bundle;I)V

    :cond_0
    return-void
.end method
