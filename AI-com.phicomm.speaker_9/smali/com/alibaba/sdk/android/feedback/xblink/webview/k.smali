.class final Lcom/alibaba/sdk/android/feedback/xblink/webview/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/alibaba/sdk/android/feedback/xblink/webview/j;
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/feedback/xblink/webview/j;

    invoke-direct {v0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/j;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/alibaba/sdk/android/feedback/xblink/webview/j;
    .locals 0

    new-array p1, p1, [Lcom/alibaba/sdk/android/feedback/xblink/webview/j;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/k;->a(Landroid/os/Parcel;)Lcom/alibaba/sdk/android/feedback/xblink/webview/j;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/k;->a(I)[Lcom/alibaba/sdk/android/feedback/xblink/webview/j;

    move-result-object p1

    return-object p1
.end method
