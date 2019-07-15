.class public Lcom/huawei/hms/api/internal/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Lcom/huawei/hms/update/a/a;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/huawei/hms/api/HuaweiApiAvailability$OnUpdateListener;

.field private final c:I

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/huawei/hms/api/HuaweiApiAvailability$OnUpdateListener;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/huawei/hms/api/internal/i;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/huawei/hms/api/internal/i;->e:Z

    iput-object p2, p0, Lcom/huawei/hms/api/internal/i;->b:Lcom/huawei/hms/api/HuaweiApiAvailability$OnUpdateListener;

    iput-object p1, p0, Lcom/huawei/hms/api/internal/i;->a:Landroid/app/Activity;

    iput p3, p0, Lcom/huawei/hms/api/internal/i;->c:I

    return-void
.end method

.method private static a(Landroid/app/Activity;Landroid/net/Uri;I)Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x3

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "UpdateImpl"

    const-string p2, "Failed to start package installer."

    invoke-static {p1, p2, p0}, Lcom/huawei/hms/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private b(Ljava/io/File;)Landroid/net/Uri;
    .locals 6

    new-instance v0, Lcom/huawei/hms/a/d;

    iget-object v1, p0, Lcom/huawei/hms/api/internal/i;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/huawei/hms/a/d;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/huawei/hms/api/internal/i;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".hms.update.provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x1

    const/16 v5, 0x17

    if-le v3, v5, :cond_1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/a/d;->e(Ljava/lang/String;)I

    move-result v3

    if-le v3, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/huawei/hms/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/huawei/hms/api/internal/i;->a:Landroid/app/Activity;

    invoke-static {v0, v2, p1}, Lcom/huawei/hms/update/provider/UpdateProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private d()V
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/hms/api/internal/i;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hms/api/internal/i;->e:Z

    iget-object v0, p0, Lcom/huawei/hms/api/internal/i;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/hms/api/internal/i;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/api/internal/i;->e:Z

    iget-object v0, p0, Lcom/huawei/hms/api/internal/i;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/api/internal/i;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/huawei/hms/api/internal/i;->a:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/huawei/hms/update/a/b;->a(Landroid/app/Activity;Lcom/huawei/hms/update/a/a;)Lcom/huawei/hms/update/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/update/a/b;->a()V

    return-void
.end method

.method public a(III)V
    .locals 3

    const-string v0, "UpdateImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reveived "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " total "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/huawei/hms/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eq p3, p1, :cond_0

    const/16 p3, 0xca

    if-eq p3, p1, :cond_0

    const/16 p3, 0x67

    if-ne p3, p1, :cond_1

    :cond_0
    iget-object p3, p0, Lcom/huawei/hms/api/internal/i;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p3, p0, Lcom/huawei/hms/api/internal/i;->b:Lcom/huawei/hms/api/HuaweiApiAvailability$OnUpdateListener;

    new-instance v0, Lcom/huawei/hms/api/ConnectionResult;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/huawei/hms/api/ConnectionResult;-><init>(I)V

    invoke-interface {p3, v0}, Lcom/huawei/hms/api/HuaweiApiAvailability$OnUpdateListener;->onUpdateFailed(Lcom/huawei/hms/api/ConnectionResult;)V

    :cond_1
    const/4 p3, 0x2

    if-ne p3, p1, :cond_2

    iget-object p1, p0, Lcom/huawei/hms/api/internal/i;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/huawei/hms/api/internal/i;->b:Lcom/huawei/hms/api/HuaweiApiAvailability$OnUpdateListener;

    new-instance p2, Lcom/huawei/hms/api/ConnectionResult;

    const/16 p3, 0xd

    invoke-direct {p2, p3}, Lcom/huawei/hms/api/ConnectionResult;-><init>(I)V

    invoke-interface {p1, p2}, Lcom/huawei/hms/api/HuaweiApiAvailability$OnUpdateListener;->onUpdateFailed(Lcom/huawei/hms/api/ConnectionResult;)V

    :cond_2
    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 4

    new-instance v0, Lcom/huawei/hms/a/d;

    iget-object v1, p0, Lcom/huawei/hms/api/internal/i;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/huawei/hms/a/d;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/huawei/hms/api/internal/i;->d()V

    invoke-direct {p0, p1}, Lcom/huawei/hms/api/internal/i;->b(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.huawei.hwid"

    const-string v3, "B92825C2BD5D6D6D1E7F39EECD17843B7D9016F611136B75441BC6F4D3F00F05"

    invoke-virtual {v0, p1, v2, v3}, Lcom/huawei/hms/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/huawei/hms/api/internal/i;->a:Landroid/app/Activity;

    iget v0, p0, Lcom/huawei/hms/api/internal/i;->c:I

    invoke-static {p1, v1, v0}, Lcom/huawei/hms/api/internal/i;->a(Landroid/app/Activity;Landroid/net/Uri;I)Z

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/huawei/hms/api/internal/i;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/huawei/hms/api/internal/i;->b:Lcom/huawei/hms/api/HuaweiApiAvailability$OnUpdateListener;

    new-instance v0, Lcom/huawei/hms/api/ConnectionResult;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/huawei/hms/api/ConnectionResult;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/huawei/hms/api/HuaweiApiAvailability$OnUpdateListener;->onUpdateFailed(Lcom/huawei/hms/api/ConnectionResult;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/api/internal/i;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected c()V
    .locals 2

    invoke-direct {p0}, Lcom/huawei/hms/api/internal/i;->e()V

    iget-object v0, p0, Lcom/huawei/hms/api/internal/i;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/api/internal/i;->a:Landroid/app/Activity;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/hms/api/internal/i;->c()V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
