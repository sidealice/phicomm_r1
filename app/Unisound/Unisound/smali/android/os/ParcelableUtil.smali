.class public Landroid/os/ParcelableUtil;
.super Ljava/lang/Object;
.source "ParcelableUtil.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/ParcelableUtil;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private val:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Landroid/os/ParcelableUtil$1;

    invoke-direct {v0}, Landroid/os/ParcelableUtil$1;-><init>()V

    sput-object v0, Landroid/os/ParcelableUtil;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "ParcelableUtil"

    iput-object v0, p0, Landroid/os/ParcelableUtil;->TAG:Ljava/lang/String;

    .line 81
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ParcelableUtil;->val:Ljava/lang/Object;

    .line 82
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "a"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "ParcelableUtil"

    iput-object v0, p0, Landroid/os/ParcelableUtil;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ParcelableUtil;->val:Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Landroid/os/ParcelableUtil;->val:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "ParcelableUtil"

    const-string v1, "r ParcelableUtil val is String"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :goto_0
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Landroid/os/ParcelableUtil;->val:Ljava/lang/Object;

    instance-of v0, v0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    .line 30
    const-string v0, "ParcelableUtil"

    const-string v1, "r ParcelableUtil val is Serializable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 32
    :cond_1
    const-string v0, "ParcelableUtil"

    const-string v1, "r ParcelableUtil val is ddd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/Object;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "ParcelableUtil"

    iput-object v0, p0, Landroid/os/ParcelableUtil;->TAG:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Landroid/os/ParcelableUtil;->val:Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Landroid/os/ParcelableUtil;->val:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 17
    const-string v0, "ParcelableUtil"

    const-string v1, "w ParcelableUtil val is String"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :goto_0
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Landroid/os/ParcelableUtil;->val:Ljava/lang/Object;

    instance-of v0, v0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    .line 19
    const-string v0, "ParcelableUtil"

    const-string v1, "w ParcelableUtil val is Serializable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 21
    :cond_1
    const-string v0, "ParcelableUtil"

    const-string v1, "w ParcelableUtil val is ddd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static obtain(D)Landroid/os/ParcelableUtil;
    .locals 2
    .param p0, "v"    # D

    .prologue
    .line 57
    new-instance v0, Landroid/os/ParcelableUtil;

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p0, p1}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {v0, v1}, Landroid/os/ParcelableUtil;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static obtain(F)Landroid/os/ParcelableUtil;
    .locals 2
    .param p0, "v"    # F

    .prologue
    .line 53
    new-instance v0, Landroid/os/ParcelableUtil;

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p0}, Ljava/lang/Float;-><init>(F)V

    invoke-direct {v0, v1}, Landroid/os/ParcelableUtil;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static obtain(I)Landroid/os/ParcelableUtil;
    .locals 2
    .param p0, "v"    # I

    .prologue
    .line 41
    new-instance v0, Landroid/os/ParcelableUtil;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1}, Landroid/os/ParcelableUtil;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static obtain(J)Landroid/os/ParcelableUtil;
    .locals 2
    .param p0, "v"    # J

    .prologue
    .line 49
    new-instance v0, Landroid/os/ParcelableUtil;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p0, p1}, Ljava/lang/Long;-><init>(J)V

    invoke-direct {v0, v1}, Landroid/os/ParcelableUtil;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static obtain(Ljava/io/Serializable;)Landroid/os/ParcelableUtil;
    .locals 1
    .param p0, "v"    # Ljava/io/Serializable;

    .prologue
    .line 65
    new-instance v0, Landroid/os/ParcelableUtil;

    invoke-direct {v0, p0}, Landroid/os/ParcelableUtil;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static obtain(Ljava/lang/String;)Landroid/os/ParcelableUtil;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v0, Landroid/os/ParcelableUtil;

    invoke-direct {v0, p0}, Landroid/os/ParcelableUtil;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static obtain(S)Landroid/os/ParcelableUtil;
    .locals 2
    .param p0, "v"    # S

    .prologue
    .line 45
    new-instance v0, Landroid/os/ParcelableUtil;

    new-instance v1, Ljava/lang/Short;

    invoke-direct {v1, p0}, Ljava/lang/Short;-><init>(S)V

    invoke-direct {v0, v1}, Landroid/os/ParcelableUtil;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static obtain(Z)Landroid/os/ParcelableUtil;
    .locals 2
    .param p0, "v"    # Z

    .prologue
    .line 61
    new-instance v0, Landroid/os/ParcelableUtil;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p0}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-direct {v0, v1}, Landroid/os/ParcelableUtil;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Landroid/os/ParcelableUtil;->val:Ljava/lang/Object;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 77
    iget-object v0, p0, Landroid/os/ParcelableUtil;->val:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 78
    return-void
.end method
