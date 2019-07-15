.class final Lcom/easydlna/dlna/service/ContentInfo$1;
.super Ljava/lang/Object;
.source "ContentInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easydlna/dlna/service/ContentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/easydlna/dlna/service/ContentInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/easydlna/dlna/service/ContentInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 24
    new-instance v0, Lcom/easydlna/dlna/service/ContentInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/easydlna/dlna/service/ContentInfo;-><init>(Landroid/os/Parcel;Lcom/easydlna/dlna/service/ContentInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/easydlna/dlna/service/ContentInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/easydlna/dlna/service/ContentInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/easydlna/dlna/service/ContentInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 28
    new-array v0, p1, [Lcom/easydlna/dlna/service/ContentInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/easydlna/dlna/service/ContentInfo$1;->newArray(I)[Lcom/easydlna/dlna/service/ContentInfo;

    move-result-object v0

    return-object v0
.end method
