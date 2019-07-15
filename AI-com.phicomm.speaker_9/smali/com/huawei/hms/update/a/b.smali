.class public abstract Lcom/huawei/hms/update/a/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/app/Activity;Lcom/huawei/hms/update/a/a;)Lcom/huawei/hms/update/a/b;
    .locals 2

    const-class v0, Lcom/huawei/hms/update/a/b;

    monitor-enter v0

    :try_start_0
    const-string v1, "activity must not be null."

    invoke-static {p0, v1}, Lcom/huawei/hms/a/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "callback must not be null."

    invoke-static {p1, v1}, Lcom/huawei/hms/a/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Lcom/huawei/hms/update/d/x;

    invoke-direct {v1, p0, p1}, Lcom/huawei/hms/update/d/x;-><init>(Landroid/app/Activity;Lcom/huawei/hms/update/a/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public abstract a()V
.end method
