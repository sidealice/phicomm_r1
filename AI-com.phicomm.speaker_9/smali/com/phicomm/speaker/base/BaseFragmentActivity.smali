.class public abstract Lcom/phicomm/speaker/base/BaseFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseFragmentActivity.java"


# instance fields
.field protected a:Lcom/phicomm/speaker/views/LoadingDialog;

.field private b:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Landroid/os/Bundle;)V
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseFragmentActivity;->a:Lcom/phicomm/speaker/views/LoadingDialog;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/phicomm/speaker/views/LoadingDialog;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/views/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/phicomm/speaker/base/BaseFragmentActivity;->a:Lcom/phicomm/speaker/views/LoadingDialog;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseFragmentActivity;->a:Lcom/phicomm/speaker/views/LoadingDialog;

    sget-wide v1, Lcom/phicomm/speaker/views/LoadingDialog;->a:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/phicomm/speaker/views/LoadingDialog;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public a(Z)Z
    .locals 8

    .line 55
    invoke-virtual {p0}, Lcom/phicomm/speaker/base/BaseFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.view.MiuiWindowManager$LayoutParams"

    .line 58
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 60
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    const-string v3, "setExtraFlags"

    const/4 v4, 0x2

    .line 62
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/phicomm/speaker/base/BaseFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v7

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :catch_0
    move-exception p1

    .line 66
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return v1
.end method

.method public c()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseFragmentActivity;->a:Lcom/phicomm/speaker/views/LoadingDialog;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseFragmentActivity;->a:Lcom/phicomm/speaker/views/LoadingDialog;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/LoadingDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {}, Lcom/phicomm/speaker/f/c;->a()Lcom/phicomm/speaker/f/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/f/c;->a(Landroid/app/Activity;)V

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/base/BaseFragmentActivity;->setRequestedOrientation(I)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/base/BaseFragmentActivity;->a(Z)Z

    .line 44
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/base/BaseFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 47
    :try_start_0
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/base/BaseFragmentActivity;->b:Lbutterknife/Unbinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 51
    :goto_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/base/BaseFragmentActivity;->a()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 86
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 87
    invoke-static {}, Lcom/phicomm/speaker/f/c;->a()Lcom/phicomm/speaker/f/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/f/c;->c(Landroid/app/Activity;)V

    .line 88
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseFragmentActivity;->b:Lbutterknife/Unbinder;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseFragmentActivity;->b:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 74
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 75
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 80
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 81
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method
