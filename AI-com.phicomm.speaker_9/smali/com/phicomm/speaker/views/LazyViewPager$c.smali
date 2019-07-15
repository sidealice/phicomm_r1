.class Lcom/phicomm/speaker/views/LazyViewPager$c;
.super Landroid/database/DataSetObserver;
.source "LazyViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/views/LazyViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/views/LazyViewPager;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/views/LazyViewPager;)V
    .locals 0

    .line 1776
    iput-object p1, p0, Lcom/phicomm/speaker/views/LazyViewPager$c;->a:Lcom/phicomm/speaker/views/LazyViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/views/LazyViewPager;Lcom/phicomm/speaker/views/LazyViewPager$1;)V
    .locals 0

    .line 1776
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/LazyViewPager$c;-><init>(Lcom/phicomm/speaker/views/LazyViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1780
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager$c;->a:Lcom/phicomm/speaker/views/LazyViewPager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/LazyViewPager;->b()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 1785
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager$c;->a:Lcom/phicomm/speaker/views/LazyViewPager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/LazyViewPager;->b()V

    return-void
.end method
