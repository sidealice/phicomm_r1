.class public final Lcom/phicomm/speaker/player/swig/media_error_type;
.super Ljava/lang/Object;
.source "media_error_type.java"


# static fields
.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:Lcom/phicomm/speaker/player/swig/media_error_type;

.field public static final MEDIA_ERROR_SERVER_DIED:Lcom/phicomm/speaker/player/swig/media_error_type;

.field public static final MEDIA_ERROR_UNKNOWN:Lcom/phicomm/speaker/player/swig/media_error_type;

.field private static swigNext:I

.field private static swigValues:[Lcom/phicomm/speaker/player/swig/media_error_type;


# instance fields
.field private final swigName:Ljava/lang/String;

.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/phicomm/speaker/player/swig/media_error_type;

    const-string v1, "MEDIA_ERROR_UNKNOWN"

    invoke-static {}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->MEDIA_ERROR_UNKNOWN_get()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/player/swig/media_error_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/player/swig/media_error_type;->MEDIA_ERROR_UNKNOWN:Lcom/phicomm/speaker/player/swig/media_error_type;

    .line 13
    new-instance v0, Lcom/phicomm/speaker/player/swig/media_error_type;

    const-string v1, "MEDIA_ERROR_SERVER_DIED"

    invoke-static {}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->MEDIA_ERROR_SERVER_DIED_get()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/player/swig/media_error_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/player/swig/media_error_type;->MEDIA_ERROR_SERVER_DIED:Lcom/phicomm/speaker/player/swig/media_error_type;

    .line 14
    new-instance v0, Lcom/phicomm/speaker/player/swig/media_error_type;

    const-string v1, "MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK"

    invoke-static {}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK_get()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/player/swig/media_error_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/player/swig/media_error_type;->MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:Lcom/phicomm/speaker/player/swig/media_error_type;

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/phicomm/speaker/player/swig/media_error_type;

    sget-object v1, Lcom/phicomm/speaker/player/swig/media_error_type;->MEDIA_ERROR_UNKNOWN:Lcom/phicomm/speaker/player/swig/media_error_type;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Lcom/phicomm/speaker/player/swig/media_error_type;->MEDIA_ERROR_SERVER_DIED:Lcom/phicomm/speaker/player/swig/media_error_type;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/phicomm/speaker/player/swig/media_error_type;->MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:Lcom/phicomm/speaker/player/swig/media_error_type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/phicomm/speaker/player/swig/media_error_type;->swigValues:[Lcom/phicomm/speaker/player/swig/media_error_type;

    .line 51
    sput v3, Lcom/phicomm/speaker/player/swig/media_error_type;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "swigName"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/phicomm/speaker/player/swig/media_error_type;->swigName:Ljava/lang/String;

    .line 35
    sget v0, Lcom/phicomm/speaker/player/swig/media_error_type;->swigNext:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/phicomm/speaker/player/swig/media_error_type;->swigNext:I

    iput v0, p0, Lcom/phicomm/speaker/player/swig/media_error_type;->swigValue:I

    .line 36
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "swigName"    # Ljava/lang/String;
    .param p2, "swigValue"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/phicomm/speaker/player/swig/media_error_type;->swigName:Ljava/lang/String;

    .line 40
    iput p2, p0, Lcom/phicomm/speaker/player/swig/media_error_type;->swigValue:I

    .line 41
    add-int/lit8 v0, p2, 0x1

    sput v0, Lcom/phicomm/speaker/player/swig/media_error_type;->swigNext:I

    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/phicomm/speaker/player/swig/media_error_type;)V
    .locals 1
    .param p1, "swigName"    # Ljava/lang/String;
    .param p2, "swigEnum"    # Lcom/phicomm/speaker/player/swig/media_error_type;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/phicomm/speaker/player/swig/media_error_type;->swigName:Ljava/lang/String;

    .line 46
    iget v0, p2, Lcom/phicomm/speaker/player/swig/media_error_type;->swigValue:I

    iput v0, p0, Lcom/phicomm/speaker/player/swig/media_error_type;->swigValue:I

    .line 47
    iget v0, p0, Lcom/phicomm/speaker/player/swig/media_error_type;->swigValue:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/phicomm/speaker/player/swig/media_error_type;->swigNext:I

    .line 48
    return-void
.end method

.method public static swigToEnum(I)Lcom/phicomm/speaker/player/swig/media_error_type;
    .locals 4
    .param p0, "swigValue"    # I

    .prologue
    .line 25
    sget-object v1, Lcom/phicomm/speaker/player/swig/media_error_type;->swigValues:[Lcom/phicomm/speaker/player/swig/media_error_type;

    array-length v1, v1

    if-ge p0, v1, :cond_0

    if-ltz p0, :cond_0

    sget-object v1, Lcom/phicomm/speaker/player/swig/media_error_type;->swigValues:[Lcom/phicomm/speaker/player/swig/media_error_type;

    aget-object v1, v1, p0

    iget v1, v1, Lcom/phicomm/speaker/player/swig/media_error_type;->swigValue:I

    if-ne v1, p0, :cond_0

    .line 26
    sget-object v1, Lcom/phicomm/speaker/player/swig/media_error_type;->swigValues:[Lcom/phicomm/speaker/player/swig/media_error_type;

    aget-object v1, v1, p0

    .line 29
    :goto_0
    return-object v1

    .line 27
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/phicomm/speaker/player/swig/media_error_type;->swigValues:[Lcom/phicomm/speaker/player/swig/media_error_type;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 28
    sget-object v1, Lcom/phicomm/speaker/player/swig/media_error_type;->swigValues:[Lcom/phicomm/speaker/player/swig/media_error_type;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/phicomm/speaker/player/swig/media_error_type;->swigValue:I

    if-ne v1, p0, :cond_1

    .line 29
    sget-object v1, Lcom/phicomm/speaker/player/swig/media_error_type;->swigValues:[Lcom/phicomm/speaker/player/swig/media_error_type;

    aget-object v1, v1, v0

    goto :goto_0

    .line 27
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 30
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No enum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/phicomm/speaker/player/swig/media_error_type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/phicomm/speaker/player/swig/media_error_type;->swigValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/phicomm/speaker/player/swig/media_error_type;->swigName:Ljava/lang/String;

    return-object v0
.end method
