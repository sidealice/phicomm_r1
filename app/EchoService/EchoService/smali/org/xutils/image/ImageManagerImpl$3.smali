.class Lorg/xutils/image/ImageManagerImpl$3;
.super Ljava/lang/Object;
.source "ImageManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/image/ImageManagerImpl;->bind(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xutils/image/ImageManagerImpl;

.field final synthetic val$callback:Lorg/xutils/common/Callback$CommonCallback;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lorg/xutils/image/ImageManagerImpl;Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V
    .locals 0
    .param p1, "this$0"    # Lorg/xutils/image/ImageManagerImpl;

    .prologue
    .line 57
    iput-object p1, p0, Lorg/xutils/image/ImageManagerImpl$3;->this$0:Lorg/xutils/image/ImageManagerImpl;

    iput-object p2, p0, Lorg/xutils/image/ImageManagerImpl$3;->val$view:Landroid/widget/ImageView;

    iput-object p3, p0, Lorg/xutils/image/ImageManagerImpl$3;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lorg/xutils/image/ImageManagerImpl$3;->val$callback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 60
    iget-object v0, p0, Lorg/xutils/image/ImageManagerImpl$3;->val$view:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/xutils/image/ImageManagerImpl$3;->val$url:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/xutils/image/ImageManagerImpl$3;->val$callback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-static {v0, v1, v2, v3}, Lorg/xutils/image/ImageLoader;->doBind(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    .line 61
    return-void
.end method
