.class public Lcom/phicomm/speaker/activity/SplashActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "SplashActivity.java"


# instance fields
.field a:Landroid/os/Handler;

.field b:Ljava/lang/Runnable;

.field private d:Lcom/phicomm/speaker/presenter/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    .line 30
    new-instance v0, Lcom/phicomm/speaker/activity/SplashActivity$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/activity/SplashActivity$1;-><init>(Lcom/phicomm/speaker/activity/SplashActivity;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/SplashActivity;->b:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/SplashActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/SplashActivity;->e()V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/SplashActivity;)Lcom/phicomm/speaker/presenter/c;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/phicomm/speaker/activity/SplashActivity;->d:Lcom/phicomm/speaker/presenter/c;

    return-object p0
.end method

.method private d()V
    .locals 4

    .line 98
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/manager/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/manager/a;->e()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SplashActivity;->d:Lcom/phicomm/speaker/presenter/c;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/c;->g()V

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SplashActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SplashActivity;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private e()V
    .locals 2

    .line 108
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/manager/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/LoginCloudActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 111
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 113
    :goto_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/SplashActivity;->finish()V

    return-void
.end method

.method private f()V
    .locals 2

    .line 117
    invoke-static {}, Lcom/phicomm/speaker/f/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/phicomm/speaker/f/b;->c()I

    move-result v0

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f53\u524dSDK\u7248\u672c\u4e3a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 45
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/SplashActivity;->isTaskRoot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.category.LAUNCHER"

    .line 49
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/SplashActivity;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 56
    sput-boolean v0, Lcom/phicomm/speaker/PhApplication;->a:Z

    .line 57
    invoke-static {}, Lorg/litepal/LitePal;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/SplashActivity;->a:Landroid/os/Handler;

    .line 59
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/SplashActivity;->f()V

    .line 60
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/SplashActivity;->b()V

    .line 61
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/SplashActivity;->d()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b005d

    .line 39
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/SplashActivity;->setContentView(I)V

    return-void
.end method

.method protected b()V
    .locals 3

    .line 66
    new-instance v0, Lcom/phicomm/speaker/presenter/c;

    new-instance v1, Lcom/phicomm/speaker/activity/SplashActivity$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/SplashActivity$2;-><init>(Lcom/phicomm/speaker/activity/SplashActivity;)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/phicomm/speaker/presenter/c;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/c;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/SplashActivity;->d:Lcom/phicomm/speaker/presenter/c;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 124
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    .line 125
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SplashActivity;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/activity/SplashActivity;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SplashActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SplashActivity;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SplashActivity;->d:Lcom/phicomm/speaker/presenter/c;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SplashActivity;->d:Lcom/phicomm/speaker/presenter/c;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/c;->h()V

    :cond_1
    return-void
.end method
