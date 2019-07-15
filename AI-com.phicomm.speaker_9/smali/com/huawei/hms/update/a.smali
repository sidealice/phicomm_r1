.class public final Lcom/huawei/hms/update/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/update/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/update/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/huawei/hms/update/b$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)Lcom/huawei/hms/update/b$a;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/update/a;->a:Lcom/huawei/hms/update/b$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/huawei/hms/update/a$a;

    invoke-direct {v0, p1}, Lcom/huawei/hms/update/a$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/hms/update/a;->a:Lcom/huawei/hms/update/b$a;

    :cond_0
    iget-object p1, p0, Lcom/huawei/hms/update/a;->a:Lcom/huawei/hms/update/b$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.huawei.hwid"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "hms/HwMobileService.apk"

    return-object v0
.end method

.method public c()I
    .locals 1

    const v0, 0x13748ac

    return v0
.end method
