.class public final Lcom/baidu/location/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/location/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:D

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/location/m;

    invoke-direct {v0}, Lcom/baidu/location/m;-><init>()V

    sput-object v0, Lcom/baidu/location/i;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/location/i;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/location/i;->c:Ljava/lang/String;

    iput-wide p3, p0, Lcom/baidu/location/i;->a:D

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/i;->a:D

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/i;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/i;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/baidu/location/i;->a:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
