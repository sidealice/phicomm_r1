.class Lcom/youth/banner/Banner$BannerPagerAdapter$2;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youth/banner/Banner$BannerPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youth/banner/Banner$BannerPagerAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/youth/banner/Banner$BannerPagerAdapter;I)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/youth/banner/Banner$BannerPagerAdapter$2;->this$1:Lcom/youth/banner/Banner$BannerPagerAdapter;

    iput p2, p0, Lcom/youth/banner/Banner$BannerPagerAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 530
    iget-object p1, p0, Lcom/youth/banner/Banner$BannerPagerAdapter$2;->this$1:Lcom/youth/banner/Banner$BannerPagerAdapter;

    iget-object p1, p1, Lcom/youth/banner/Banner$BannerPagerAdapter;->this$0:Lcom/youth/banner/Banner;

    invoke-static {p1}, Lcom/youth/banner/Banner;->access$900(Lcom/youth/banner/Banner;)Lcom/youth/banner/listener/OnBannerListener;

    move-result-object p1

    iget-object v0, p0, Lcom/youth/banner/Banner$BannerPagerAdapter$2;->this$1:Lcom/youth/banner/Banner$BannerPagerAdapter;

    iget-object v0, v0, Lcom/youth/banner/Banner$BannerPagerAdapter;->this$0:Lcom/youth/banner/Banner;

    iget v1, p0, Lcom/youth/banner/Banner$BannerPagerAdapter$2;->val$position:I

    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->toRealPosition(I)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/youth/banner/listener/OnBannerListener;->OnBannerClick(I)V

    return-void
.end method
