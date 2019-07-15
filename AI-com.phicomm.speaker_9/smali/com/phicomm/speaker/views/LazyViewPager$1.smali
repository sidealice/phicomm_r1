.class final Lcom/phicomm/speaker/views/LazyViewPager$1;
.super Ljava/lang/Object;
.source "LazyViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/views/LazyViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/phicomm/speaker/views/LazyViewPager$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/views/LazyViewPager$a;Lcom/phicomm/speaker/views/LazyViewPager$a;)I
    .locals 0

    .line 75
    iget p1, p1, Lcom/phicomm/speaker/views/LazyViewPager$a;->b:I

    iget p2, p2, Lcom/phicomm/speaker/views/LazyViewPager$a;->b:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 72
    check-cast p1, Lcom/phicomm/speaker/views/LazyViewPager$a;

    check-cast p2, Lcom/phicomm/speaker/views/LazyViewPager$a;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/views/LazyViewPager$1;->a(Lcom/phicomm/speaker/views/LazyViewPager$a;Lcom/phicomm/speaker/views/LazyViewPager$a;)I

    move-result p1

    return p1
.end method
