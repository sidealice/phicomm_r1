.class Lcom/youth/banner/Banner$1;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youth/banner/Banner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youth/banner/Banner;


# direct methods
.method constructor <init>(Lcom/youth/banner/Banner;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/youth/banner/Banner$1;->this$0:Lcom/youth/banner/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 458
    iget-object v0, p0, Lcom/youth/banner/Banner$1;->this$0:Lcom/youth/banner/Banner;

    invoke-static {v0}, Lcom/youth/banner/Banner;->access$000(Lcom/youth/banner/Banner;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/youth/banner/Banner$1;->this$0:Lcom/youth/banner/Banner;

    invoke-static {v0}, Lcom/youth/banner/Banner;->access$100(Lcom/youth/banner/Banner;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/youth/banner/Banner$1;->this$0:Lcom/youth/banner/Banner;

    iget-object v2, p0, Lcom/youth/banner/Banner$1;->this$0:Lcom/youth/banner/Banner;

    invoke-static {v2}, Lcom/youth/banner/Banner;->access$200(Lcom/youth/banner/Banner;)I

    move-result v2

    iget-object v3, p0, Lcom/youth/banner/Banner$1;->this$0:Lcom/youth/banner/Banner;

    invoke-static {v3}, Lcom/youth/banner/Banner;->access$000(Lcom/youth/banner/Banner;)I

    move-result v3

    add-int/2addr v3, v1

    rem-int/2addr v2, v3

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/youth/banner/Banner;->access$202(Lcom/youth/banner/Banner;I)I

    .line 461
    iget-object v0, p0, Lcom/youth/banner/Banner$1;->this$0:Lcom/youth/banner/Banner;

    invoke-static {v0}, Lcom/youth/banner/Banner;->access$200(Lcom/youth/banner/Banner;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 462
    iget-object v0, p0, Lcom/youth/banner/Banner$1;->this$0:Lcom/youth/banner/Banner;

    invoke-static {v0}, Lcom/youth/banner/Banner;->access$300(Lcom/youth/banner/Banner;)Lcom/youth/banner/view/BannerViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/youth/banner/Banner$1;->this$0:Lcom/youth/banner/Banner;

    invoke-static {v1}, Lcom/youth/banner/Banner;->access$200(Lcom/youth/banner/Banner;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/youth/banner/view/BannerViewPager;->setCurrentItem(IZ)V

    .line 463
    iget-object v0, p0, Lcom/youth/banner/Banner$1;->this$0:Lcom/youth/banner/Banner;

    invoke-static {v0}, Lcom/youth/banner/Banner;->access$500(Lcom/youth/banner/Banner;)Lcom/youth/banner/WeakHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/youth/banner/Banner$1;->this$0:Lcom/youth/banner/Banner;

    invoke-static {v1}, Lcom/youth/banner/Banner;->access$400(Lcom/youth/banner/Banner;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youth/banner/WeakHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/youth/banner/Banner$1;->this$0:Lcom/youth/banner/Banner;

    invoke-static {v0}, Lcom/youth/banner/Banner;->access$300(Lcom/youth/banner/Banner;)Lcom/youth/banner/view/BannerViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/youth/banner/Banner$1;->this$0:Lcom/youth/banner/Banner;

    invoke-static {v1}, Lcom/youth/banner/Banner;->access$200(Lcom/youth/banner/Banner;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youth/banner/view/BannerViewPager;->setCurrentItem(I)V

    .line 466
    iget-object v0, p0, Lcom/youth/banner/Banner$1;->this$0:Lcom/youth/banner/Banner;

    invoke-static {v0}, Lcom/youth/banner/Banner;->access$500(Lcom/youth/banner/Banner;)Lcom/youth/banner/WeakHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/youth/banner/Banner$1;->this$0:Lcom/youth/banner/Banner;

    invoke-static {v1}, Lcom/youth/banner/Banner;->access$400(Lcom/youth/banner/Banner;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/youth/banner/Banner$1;->this$0:Lcom/youth/banner/Banner;

    invoke-static {v2}, Lcom/youth/banner/Banner;->access$600(Lcom/youth/banner/Banner;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/youth/banner/WeakHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
