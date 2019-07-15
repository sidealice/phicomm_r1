.class final Lcom/phicomm/speaker/views/LazyViewPager$SavedState$1;
.super Ljava/lang/Object;
.source "LazyViewPager.java"

# interfaces
.implements Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/views/LazyViewPager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/os/ParcelableCompatCreatorCallbacks<",
        "Lcom/phicomm/speaker/views/LazyViewPager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/phicomm/speaker/views/LazyViewPager$SavedState;
    .locals 1

    .line 760
    new-instance v0, Lcom/phicomm/speaker/views/LazyViewPager$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/phicomm/speaker/views/LazyViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public a(I)[Lcom/phicomm/speaker/views/LazyViewPager$SavedState;
    .locals 0

    .line 765
    new-array p1, p1, [Lcom/phicomm/speaker/views/LazyViewPager$SavedState;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 757
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/views/LazyViewPager$SavedState$1;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/phicomm/speaker/views/LazyViewPager$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 757
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/LazyViewPager$SavedState$1;->a(I)[Lcom/phicomm/speaker/views/LazyViewPager$SavedState;

    move-result-object p1

    return-object p1
.end method
