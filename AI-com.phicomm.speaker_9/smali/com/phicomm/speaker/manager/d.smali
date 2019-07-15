.class public Lcom/phicomm/speaker/manager/d;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/phicomm/speaker/presenter/q;

.field private c:Z

.field private d:Lcom/phicomm/speaker/views/AppUpdateDialog;

.field private e:Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;

.field private f:Lorg/xutils/common/Callback$Cancelable;

.field private g:Lcom/phicomm/speaker/bean/AppUpdate;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/phicomm/speaker/manager/d;->a:Landroid/app/Activity;

    .line 54
    invoke-direct {p0}, Lcom/phicomm/speaker/manager/d;->c()V

    return-void
.end method

.method private a(Lcom/phicomm/speaker/bean/AppUpdate;)V
    .locals 11

    const-string v0, "1"

    .line 105
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/AppUpdate;->getVer_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 107
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/AppUpdate;->getVer_code()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v8, v0}, Lcom/phicomm/speaker/manager/d;->a(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u68c0\u67e5\u5230\u6700\u65b0\u7248\u672c\u6590\u8bafAI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/AppUpdate;->getVer_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u66f4\u65b0\u5185\u5bb9\uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/AppUpdate;->getVer_infos()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v8, :cond_1

    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    goto :goto_1

    .line 113
    :cond_1
    iget-boolean v0, p0, Lcom/phicomm/speaker/manager/d;->c:Z

    if-eqz v0, :cond_2

    const-string v0, "\u53d6\u6d88"

    goto :goto_0

    :cond_2
    const-string v0, "\u6682\u4e0d\u66f4\u65b0"

    goto :goto_0

    .line 114
    :goto_1
    iget-boolean v0, p0, Lcom/phicomm/speaker/manager/d;->c:Z

    if-eqz v0, :cond_3

    const-string v0, "\u4e0b\u8f7d\u5b89\u88c5"

    :goto_2
    move-object v7, v0

    goto :goto_3

    :cond_3
    const-string v0, "\u7acb\u5373\u66f4\u65b0"

    goto :goto_2

    .line 115
    :goto_3
    new-instance v0, Lcom/phicomm/speaker/views/AppUpdateDialog;

    iget-object v3, p0, Lcom/phicomm/speaker/manager/d;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/AppUpdate;->getVer_code()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/phicomm/speaker/manager/d$2;

    invoke-direct {v10, p0, p1}, Lcom/phicomm/speaker/manager/d$2;-><init>(Lcom/phicomm/speaker/manager/d;Lcom/phicomm/speaker/bean/AppUpdate;)V

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/phicomm/speaker/views/AppUpdateDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/phicomm/speaker/c/c;)V

    iput-object v0, p0, Lcom/phicomm/speaker/manager/d;->d:Lcom/phicomm/speaker/views/AppUpdateDialog;

    .line 122
    iget-object p1, p0, Lcom/phicomm/speaker/manager/d;->d:Lcom/phicomm/speaker/views/AppUpdateDialog;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/AppUpdateDialog;->show()V

    .line 124
    iget-boolean p1, p0, Lcom/phicomm/speaker/manager/d;->c:Z

    if-eqz p1, :cond_4

    .line 126
    :try_start_0
    iget-object p1, p0, Lcom/phicomm/speaker/manager/d;->a:Landroid/app/Activity;

    check-cast p1, Lcom/phicomm/speaker/activity/AboutActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/AboutActivity;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 128
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 132
    :cond_4
    :goto_4
    iget-object p1, p0, Lcom/phicomm/speaker/manager/d;->d:Lcom/phicomm/speaker/views/AppUpdateDialog;

    new-instance v0, Lcom/phicomm/speaker/manager/d$3;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/manager/d$3;-><init>(Lcom/phicomm/speaker/manager/d;)V

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/AppUpdateDialog;->a(Lcom/phicomm/speaker/views/AppUpdateDialog$a;)V

    .line 146
    iget-object p1, p0, Lcom/phicomm/speaker/manager/d;->d:Lcom/phicomm/speaker/views/AppUpdateDialog;

    new-instance v0, Lcom/phicomm/speaker/manager/d$4;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/manager/d$4;-><init>(Lcom/phicomm/speaker/manager/d;)V

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/AppUpdateDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/manager/d;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/phicomm/speaker/manager/d;->h()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/manager/d;Ljava/io/File;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/manager/d;->a(Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 285
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/phicomm/speaker/manager/d;->d:Lcom/phicomm/speaker/views/AppUpdateDialog;

    if-eqz v0, :cond_1

    const-string v0, "1"

    .line 288
    iget-object v1, p0, Lcom/phicomm/speaker/manager/d;->g:Lcom/phicomm/speaker/bean/AppUpdate;

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/AppUpdate;->getVer_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/manager/d;->g:Lcom/phicomm/speaker/bean/AppUpdate;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/phicomm/speaker/manager/d;->d:Lcom/phicomm/speaker/views/AppUpdateDialog;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/AppUpdateDialog;->dismiss()V

    .line 290
    iget-object v0, p0, Lcom/phicomm/speaker/manager/d;->g:Lcom/phicomm/speaker/bean/AppUpdate;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/manager/d;->a(Lcom/phicomm/speaker/bean/AppUpdate;)V

    goto :goto_0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/manager/d;->d:Lcom/phicomm/speaker/views/AppUpdateDialog;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/AppUpdateDialog;->dismiss()V

    .line 296
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 297
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 298
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    iget-object p1, p0, Lcom/phicomm/speaker/manager/d;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/manager/d;Lcom/phicomm/speaker/bean/AppUpdate;)Z
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/manager/d;->b(Lcom/phicomm/speaker/bean/AppUpdate;)Z

    move-result p0

    return p0
.end method

.method private a(ZLjava/lang/String;)Z
    .locals 9

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_update_show_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/phicomm/speaker/f/b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/y;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 167
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "_"

    .line 168
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le p2, v3, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    aget-object p2, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v5, p2

    sub-long v7, v3, v5

    long-to-int p2, v7

    const v0, 0x13c680

    if-ge p2, v0, :cond_1

    move p2, v1

    goto :goto_1

    :catch_0
    :cond_1
    :goto_0
    move p2, v2

    .line 182
    :goto_1
    iget-boolean v0, p0, Lcom/phicomm/speaker/manager/d;->c:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method static synthetic b(Lcom/phicomm/speaker/manager/d;Lcom/phicomm/speaker/bean/AppUpdate;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/manager/d;->a(Lcom/phicomm/speaker/bean/AppUpdate;)V

    return-void
.end method

.method private b(Lcom/phicomm/speaker/bean/AppUpdate;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 271
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/AppUpdate;->getVer_name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/AppUpdate;->getVer_type()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/AppUpdate;->getVer_down_url()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 272
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/phicomm/speaker/manager/d;->c:Z

    if-eqz p1, :cond_2

    const-string p1, "\u5f53\u524d\u7248\u672c\u5df2\u662f\u6700\u65b0\u7248\u672c"

    .line 273
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    :cond_2
    const-string p1, "app_new_vercode"

    .line 276
    invoke-static {}, Lcom/phicomm/speaker/f/b;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/y;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic b(Lcom/phicomm/speaker/manager/d;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/phicomm/speaker/manager/d;->c:Z

    return p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/manager/d;)Landroid/app/Activity;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/phicomm/speaker/manager/d;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/manager/d;Lcom/phicomm/speaker/bean/AppUpdate;)Lcom/phicomm/speaker/bean/AppUpdate;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/phicomm/speaker/manager/d;->g:Lcom/phicomm/speaker/bean/AppUpdate;

    return-object p1
.end method

.method private c()V
    .locals 2

    .line 58
    new-instance v0, Lcom/phicomm/speaker/presenter/q;

    new-instance v1, Lcom/phicomm/speaker/manager/d$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/manager/d$1;-><init>(Lcom/phicomm/speaker/manager/d;)V

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/presenter/q;-><init>(Lcom/phicomm/speaker/presenter/b/p;)V

    iput-object v0, p0, Lcom/phicomm/speaker/manager/d;->b:Lcom/phicomm/speaker/presenter/q;

    return-void
.end method

.method private d()V
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/phicomm/speaker/manager/d;->g()V

    .line 100
    iget-object v0, p0, Lcom/phicomm/speaker/manager/d;->b:Lcom/phicomm/speaker/presenter/q;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/q;->c()V

    return-void
.end method

.method static synthetic d(Lcom/phicomm/speaker/manager/d;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/phicomm/speaker/manager/d;->e()V

    return-void
.end method

.method static synthetic e(Lcom/phicomm/speaker/manager/d;)Lorg/xutils/common/Callback$Cancelable;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/phicomm/speaker/manager/d;->f:Lorg/xutils/common/Callback$Cancelable;

    return-object p0
.end method

.method private e()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/phicomm/speaker/manager/d;->g:Lcom/phicomm/speaker/bean/AppUpdate;

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/manager/d;->a()V

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhiHome."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/manager/d;->g:Lcom/phicomm/speaker/bean/AppUpdate;

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/AppUpdate;->getVer_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-static {v0}, Lcom/phicomm/speaker/f/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/manager/d;->a(Ljava/io/File;)V

    return-void

    .line 217
    :cond_1
    new-instance v1, Lorg/xutils/http/RequestParams;

    iget-object v2, p0, Lcom/phicomm/speaker/manager/d;->g:Lcom/phicomm/speaker/bean/AppUpdate;

    invoke-virtual {v2}, Lcom/phicomm/speaker/bean/AppUpdate;->getVer_down_url()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xutils/http/RequestParams;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v1, v0}, Lorg/xutils/http/RequestParams;->setSaveFilePath(Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lorg/xutils/x;->http()Lorg/xutils/HttpManager;

    move-result-object v0

    new-instance v2, Lcom/phicomm/speaker/manager/d$5;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/manager/d$5;-><init>(Lcom/phicomm/speaker/manager/d;)V

    invoke-interface {v0, v1, v2}, Lorg/xutils/HttpManager;->get(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/manager/d;->f:Lorg/xutils/common/Callback$Cancelable;

    return-void
.end method

.method static synthetic f(Lcom/phicomm/speaker/manager/d;)Lcom/phicomm/speaker/views/AppUpdateDialog;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/phicomm/speaker/manager/d;->d:Lcom/phicomm/speaker/views/AppUpdateDialog;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 306
    iget-boolean v0, p0, Lcom/phicomm/speaker/manager/d;->c:Z

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/phicomm/speaker/manager/d;->e:Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;

    iget-object v1, p0, Lcom/phicomm/speaker/manager/d;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/manager/d;->e:Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;

    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    .line 314
    iget-boolean v0, p0, Lcom/phicomm/speaker/manager/d;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/manager/d;->e:Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/phicomm/speaker/manager/d;->e:Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;->show()V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/phicomm/speaker/manager/d;->e:Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/phicomm/speaker/manager/d;->e:Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/phicomm/speaker/manager/d;->h:Z

    if-nez v0, :cond_0

    .line 192
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 193
    iput-boolean v0, p0, Lcom/phicomm/speaker/manager/d;->h:Z

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 90
    sget-boolean v0, Lcom/phicomm/speaker/PhApplication;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    iput-boolean p1, p0, Lcom/phicomm/speaker/manager/d;->c:Z

    .line 94
    invoke-direct {p0}, Lcom/phicomm/speaker/manager/d;->f()V

    .line 95
    invoke-direct {p0}, Lcom/phicomm/speaker/manager/d;->d()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/phicomm/speaker/manager/d;->h:Z

    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lcom/phicomm/speaker/manager/d;->h:Z

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/phicomm/speaker/a/x;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 265
    iget-object p1, p0, Lcom/phicomm/speaker/manager/d;->d:Lcom/phicomm/speaker/views/AppUpdateDialog;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/AppUpdateDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/phicomm/speaker/manager/d;->e()V

    :cond_0
    return-void
.end method
