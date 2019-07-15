.class public Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity;
.super Landroid/app/Activity;
.source "PermissionUtils.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/PermissionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 282
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 292
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->b()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->a(Lcom/blankj/utilcode/util/PermissionUtils;)Lcom/blankj/utilcode/util/PermissionUtils$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->b()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->a(Lcom/blankj/utilcode/util/PermissionUtils;)Lcom/blankj/utilcode/util/PermissionUtils$d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/blankj/utilcode/util/PermissionUtils$d;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    .line 296
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x500

    .line 299
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v1, 0x0

    .line 300
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 303
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 305
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->b()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/PermissionUtils;->a(Lcom/blankj/utilcode/util/PermissionUtils;Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 306
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity;->finish()V

    return-void

    .line 309
    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->b()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/PermissionUtils;->b(Lcom/blankj/utilcode/util/PermissionUtils;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 310
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->b()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/PermissionUtils;->b(Lcom/blankj/utilcode/util/PermissionUtils;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 311
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->b()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->b(Lcom/blankj/utilcode/util/PermissionUtils;)Ljava/util/List;

    move-result-object v0

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity;->requestPermissions([Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p2, :cond_0

    .line 317
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Argument \'permissions\' of type String[] (#0 out of 3, zero-based) is marked by @android.support.annotation.NonNull but got null for it"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p3, :cond_1

    .line 318
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Argument \'grantResults\' of type int[] (#1 out of 3, zero-based) is marked by @android.support.annotation.NonNull but got null for it"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 319
    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->b()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/PermissionUtils;->b(Lcom/blankj/utilcode/util/PermissionUtils;Landroid/app/Activity;)V

    .line 320
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity;->finish()V

    return-void
.end method
