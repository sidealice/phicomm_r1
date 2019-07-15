.class public Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter$a;
.super Ljava/lang/Object;
.source "UnBindPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/phicomm/speaker/views/e;

.field public static b:Lcom/phicomm/speaker/views/LoadingNormalDialog;


# direct methods
.method public static a()V
    .locals 5

    const-string v0, "showDialog"

    .line 109
    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 110
    invoke-static {}, Lcom/phicomm/speaker/presenter/mqtt/d;->a()Lcom/phicomm/speaker/presenter/mqtt/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/mqtt/d;->d()V

    .line 111
    invoke-static {}, Lcom/phicomm/speaker/f/c;->a()Lcom/phicomm/speaker/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/f/c;->b()Landroid/app/Activity;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {v2}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDevice_nickname()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 116
    invoke-virtual {v2}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDevice_nickname()Ljava/lang/String;

    move-result-object v1

    .line 119
    :cond_0
    new-instance v2, Lcom/phicomm/speaker/views/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u60a8\u7684"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5df2\u88ab\u89e3\u7ed1\uff0c\u82e5\u60f3\u7ee7\u7eed\u4f7f\u7528\uff0c\u8bf7\u91cd\u65b0\u7ed1\u5b9a"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\u786e\u5b9a"

    new-instance v4, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter$a$1;

    invoke-direct {v4}, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter$a$1;-><init>()V

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/phicomm/speaker/views/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/c/c;)V

    sput-object v2, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter$a;->a:Lcom/phicomm/speaker/views/e;

    .line 127
    sget-object v0, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter$a;->a:Lcom/phicomm/speaker/views/e;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/e;->show()V

    return-void
.end method

.method public static b()V
    .locals 2

    .line 131
    invoke-static {}, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter$a;->c()V

    .line 132
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter$a$2;

    invoke-direct {v1}, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter$a$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/e/d;->c(Lcom/phicomm/speaker/e/c/d;)V

    return-void
.end method

.method public static c()V
    .locals 3

    .line 156
    sget-object v0, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter$a;->b:Lcom/phicomm/speaker/views/LoadingNormalDialog;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/phicomm/speaker/views/LoadingNormalDialog;

    invoke-static {}, Lcom/phicomm/speaker/f/c;->a()Lcom/phicomm/speaker/f/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/f/c;->b()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0133

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/views/LoadingNormalDialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter$a;->b:Lcom/phicomm/speaker/views/LoadingNormalDialog;

    .line 159
    :cond_0
    sget-object v0, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter$a;->b:Lcom/phicomm/speaker/views/LoadingNormalDialog;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/LoadingNormalDialog;->show()V

    return-void
.end method

.method public static d()V
    .locals 1

    .line 163
    sget-object v0, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter$a;->b:Lcom/phicomm/speaker/views/LoadingNormalDialog;

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter$a;->b:Lcom/phicomm/speaker/views/LoadingNormalDialog;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/LoadingNormalDialog;->dismiss()V

    :cond_0
    return-void
.end method
