.class final Lorg/xutils/image/a$3;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/image/a;->a(Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/xutils/common/Callback$CommonCallback;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lorg/xutils/image/ImageOptions;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/xutils/common/Callback$CommonCallback;Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lorg/xutils/image/a$3;->a:Lorg/xutils/common/Callback$CommonCallback;

    iput-object p2, p0, Lorg/xutils/image/a$3;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lorg/xutils/image/a$3;->c:Lorg/xutils/image/ImageOptions;

    iput-object p4, p0, Lorg/xutils/image/a$3;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 560
    :try_start_0
    iget-object v0, p0, Lorg/xutils/image/a$3;->a:Lorg/xutils/common/Callback$CommonCallback;

    instance-of v0, v0, Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lorg/xutils/image/a$3;->a:Lorg/xutils/common/Callback$CommonCallback;

    check-cast v0, Lorg/xutils/common/Callback$ProgressCallback;

    invoke-interface {v0}, Lorg/xutils/common/Callback$ProgressCallback;->onWaiting()V

    .line 563
    :cond_0
    iget-object v0, p0, Lorg/xutils/image/a$3;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/xutils/image/a$3;->c:Lorg/xutils/image/ImageOptions;

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lorg/xutils/image/a$3;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/xutils/image/a$3;->c:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v1}, Lorg/xutils/image/ImageOptions;->getPlaceholderScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 565
    iget-object v0, p0, Lorg/xutils/image/a$3;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/xutils/image/a$3;->c:Lorg/xutils/image/ImageOptions;

    iget-object v2, p0, Lorg/xutils/image/a$3;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lorg/xutils/image/ImageOptions;->getFailureDrawable(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 567
    :cond_1
    iget-object v0, p0, Lorg/xutils/image/a$3;->a:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_2

    .line 568
    iget-object v0, p0, Lorg/xutils/image/a$3;->a:Lorg/xutils/common/Callback$CommonCallback;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, p0, Lorg/xutils/image/a$3;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/xutils/common/Callback$CommonCallback;->onError(Ljava/lang/Throwable;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    :cond_2
    iget-object v0, p0, Lorg/xutils/image/a$3;->a:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_4

    .line 581
    :try_start_1
    iget-object v0, p0, Lorg/xutils/image/a$3;->a:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v0}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 571
    :try_start_2
    iget-object v1, p0, Lorg/xutils/image/a$3;->a:Lorg/xutils/common/Callback$CommonCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    .line 573
    :try_start_3
    iget-object v1, p0, Lorg/xutils/image/a$3;->a:Lorg/xutils/common/Callback$CommonCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lorg/xutils/common/Callback$CommonCallback;->onError(Ljava/lang/Throwable;Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 575
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 579
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/xutils/image/a$3;->a:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_4

    .line 581
    :try_start_5
    iget-object v0, p0, Lorg/xutils/image/a$3;->a:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v0}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 583
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void

    .line 579
    :goto_2
    iget-object v1, p0, Lorg/xutils/image/a$3;->a:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v1, :cond_5

    .line 581
    :try_start_6
    iget-object v1, p0, Lorg/xutils/image/a$3;->a:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v1}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 583
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 584
    :cond_5
    :goto_3
    throw v0
.end method
