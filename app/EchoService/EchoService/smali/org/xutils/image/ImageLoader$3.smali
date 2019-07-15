.class final Lorg/xutils/image/ImageLoader$3;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/image/ImageLoader;->postArgsException(Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lorg/xutils/common/Callback$CommonCallback;

.field final synthetic val$exMsg:Ljava/lang/String;

.field final synthetic val$options:Lorg/xutils/image/ImageOptions;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lorg/xutils/common/Callback$CommonCallback;Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lorg/xutils/image/ImageLoader$3;->val$callback:Lorg/xutils/common/Callback$CommonCallback;

    iput-object p2, p0, Lorg/xutils/image/ImageLoader$3;->val$view:Landroid/widget/ImageView;

    iput-object p3, p0, Lorg/xutils/image/ImageLoader$3;->val$options:Lorg/xutils/image/ImageOptions;

    iput-object p4, p0, Lorg/xutils/image/ImageLoader$3;->val$exMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 560
    :try_start_0
    iget-object v2, p0, Lorg/xutils/image/ImageLoader$3;->val$callback:Lorg/xutils/common/Callback$CommonCallback;

    instance-of v2, v2, Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v2, :cond_0

    .line 561
    iget-object v2, p0, Lorg/xutils/image/ImageLoader$3;->val$callback:Lorg/xutils/common/Callback$CommonCallback;

    check-cast v2, Lorg/xutils/common/Callback$ProgressCallback;

    invoke-interface {v2}, Lorg/xutils/common/Callback$ProgressCallback;->onWaiting()V

    .line 563
    :cond_0
    iget-object v2, p0, Lorg/xutils/image/ImageLoader$3;->val$view:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/xutils/image/ImageLoader$3;->val$options:Lorg/xutils/image/ImageOptions;

    if-eqz v2, :cond_1

    .line 564
    iget-object v2, p0, Lorg/xutils/image/ImageLoader$3;->val$view:Landroid/widget/ImageView;

    iget-object v3, p0, Lorg/xutils/image/ImageLoader$3;->val$options:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v3}, Lorg/xutils/image/ImageOptions;->getPlaceholderScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 565
    iget-object v2, p0, Lorg/xutils/image/ImageLoader$3;->val$view:Landroid/widget/ImageView;

    iget-object v3, p0, Lorg/xutils/image/ImageLoader$3;->val$options:Lorg/xutils/image/ImageOptions;

    iget-object v4, p0, Lorg/xutils/image/ImageLoader$3;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lorg/xutils/image/ImageOptions;->getFailureDrawable(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 567
    :cond_1
    iget-object v2, p0, Lorg/xutils/image/ImageLoader$3;->val$callback:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v2, :cond_2

    .line 568
    iget-object v2, p0, Lorg/xutils/image/ImageLoader$3;->val$callback:Lorg/xutils/common/Callback$CommonCallback;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    iget-object v4, p0, Lorg/xutils/image/ImageLoader$3;->val$exMsg:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/xutils/common/Callback$CommonCallback;->onError(Ljava/lang/Throwable;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    :cond_2
    iget-object v2, p0, Lorg/xutils/image/ImageLoader$3;->val$callback:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v2, :cond_3

    .line 581
    :try_start_1
    iget-object v2, p0, Lorg/xutils/image/ImageLoader$3;->val$callback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v2}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 587
    :cond_3
    :goto_0
    return-void

    .line 582
    :catch_0
    move-exception v1

    .line 583
    .local v1, "ignored":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 570
    .end local v1    # "ignored":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 571
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_2
    iget-object v2, p0, Lorg/xutils/image/ImageLoader$3;->val$callback:Lorg/xutils/common/Callback$CommonCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_4

    .line 573
    :try_start_3
    iget-object v2, p0, Lorg/xutils/image/ImageLoader$3;->val$callback:Lorg/xutils/common/Callback$CommonCallback;

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Lorg/xutils/common/Callback$CommonCallback;->onError(Ljava/lang/Throwable;Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 579
    :cond_4
    :goto_1
    iget-object v2, p0, Lorg/xutils/image/ImageLoader$3;->val$callback:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v2, :cond_3

    .line 581
    :try_start_4
    iget-object v2, p0, Lorg/xutils/image/ImageLoader$3;->val$callback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v2}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 582
    :catch_2
    move-exception v1

    .line 583
    .restart local v1    # "ignored":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 574
    .end local v1    # "ignored":Ljava/lang/Throwable;
    :catch_3
    move-exception v1

    .line 575
    .restart local v1    # "ignored":Ljava/lang/Throwable;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 579
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v1    # "ignored":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/xutils/image/ImageLoader$3;->val$callback:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v3, :cond_5

    .line 581
    :try_start_6
    iget-object v3, p0, Lorg/xutils/image/ImageLoader$3;->val$callback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v3}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 584
    :cond_5
    :goto_2
    throw v2

    .line 582
    :catch_4
    move-exception v1

    .line 583
    .restart local v1    # "ignored":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
