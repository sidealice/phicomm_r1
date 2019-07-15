.class public Lcom/alibaba/sdk/android/feedback/xblink/webview/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final a:Landroid/os/Parcelable$Creator;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/feedback/xblink/webview/k;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/k;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/feedback/xblink/webview/j;->a:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/j;->b:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/j;->c:Z

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/j;->d:Z

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/j;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/j;->b:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/j;->c:Z

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/j;->d:Z

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/j;->e:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/j;->b:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/j;->c:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/j;->d:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v0, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/j;->e:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/j;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/j;->e:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-boolean p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/j;->b:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/j;->c:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/j;->d:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/j;->e:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
