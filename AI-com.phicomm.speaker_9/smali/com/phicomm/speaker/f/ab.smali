.class public Lcom/phicomm/speaker/f/ab;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# static fields
.field private static a:Landroid/widget/Toast;


# direct methods
.method public static a(I)V
    .locals 2

    .line 26
    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/phicomm/speaker/f/ab;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 38
    invoke-static/range {v0 .. v5}, Lcom/phicomm/speaker/f/ab;->a(Landroid/content/Context;Ljava/lang/String;IIII)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IIII)V
    .locals 0

    .line 43
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/phicomm/speaker/f/ab;->b(Landroid/content/Context;Ljava/lang/String;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 45
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 22
    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/phicomm/speaker/f/ab;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;IIII)V
    .locals 2

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 53
    :cond_0
    sget-object v0, Lcom/phicomm/speaker/f/ab;->a:Landroid/widget/Toast;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 54
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/phicomm/speaker/f/ab;->a:Landroid/widget/Toast;

    .line 55
    sget-object p0, Lcom/phicomm/speaker/f/ab;->a:Landroid/widget/Toast;

    const/16 p1, 0x11

    sget-object v0, Lcom/phicomm/speaker/f/ab;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getXOffset()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sget-object v1, Lcom/phicomm/speaker/f/ab;->a:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getYOffset()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    .line 57
    :cond_1
    sget-object p0, Lcom/phicomm/speaker/f/ab;->a:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :goto_0
    sget-object p0, Lcom/phicomm/speaker/f/ab;->a:Landroid/widget/Toast;

    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/Toast;->setGravity(III)V

    .line 60
    sget-object p0, Lcom/phicomm/speaker/f/ab;->a:Landroid/widget/Toast;

    invoke-virtual {p0, p5}, Landroid/widget/Toast;->setDuration(I)V

    .line 61
    sget-object p0, Lcom/phicomm/speaker/f/ab;->a:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .line 30
    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->a()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xce4

    invoke-static {v0, p0, v1}, Lcom/phicomm/speaker/f/ab;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
