.class public final Lcom/phicomm/speaker/player/swig/media_event_type;
.super Ljava/lang/Object;
.source "media_event_type.java"


# static fields
.field public static final MEDIA_BUFFERING_UPDATE:Lcom/phicomm/speaker/player/swig/media_event_type;

.field public static final MEDIA_ERROR:Lcom/phicomm/speaker/player/swig/media_event_type;

.field public static final MEDIA_INFO:Lcom/phicomm/speaker/player/swig/media_event_type;

.field public static final MEDIA_NOP:Lcom/phicomm/speaker/player/swig/media_event_type;

.field public static final MEDIA_PAUSED:Lcom/phicomm/speaker/player/swig/media_event_type;

.field public static final MEDIA_PLAYBACK_COMPLETE:Lcom/phicomm/speaker/player/swig/media_event_type;

.field public static final MEDIA_PREPARED:Lcom/phicomm/speaker/player/swig/media_event_type;

.field public static final MEDIA_STARTED:Lcom/phicomm/speaker/player/swig/media_event_type;

.field public static final MEDIA_STOPPED:Lcom/phicomm/speaker/player/swig/media_event_type;

.field private static swigNext:I

.field private static swigValues:[Lcom/phicomm/speaker/player/swig/media_event_type;


# instance fields
.field private final swigName:Ljava/lang/String;

.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/phicomm/speaker/player/swig/media_event_type;

    const-string v1, "MEDIA_NOP"

    invoke-static {}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->MEDIA_NOP_get()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/player/swig/media_event_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/player/swig/media_event_type;->MEDIA_NOP:Lcom/phicomm/speaker/player/swig/media_event_type;

    .line 13
    new-instance v0, Lcom/phicomm/speaker/player/swig/media_event_type;

    const-string v1, "MEDIA_PREPARED"

    invoke-static {}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->MEDIA_PREPARED_get()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/player/swig/media_event_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/player/swig/media_event_type;->MEDIA_PREPARED:Lcom/phicomm/speaker/player/swig/media_event_type;

    .line 14
    new-instance v0, Lcom/phicomm/speaker/player/swig/media_event_type;

    const-string v1, "MEDIA_PLAYBACK_COMPLETE"

    invoke-static {}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->MEDIA_PLAYBACK_COMPLETE_get()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/player/swig/media_event_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/player/swig/media_event_type;->MEDIA_PLAYBACK_COMPLETE:Lcom/phicomm/speaker/player/swig/media_event_type;

    .line 15
    new-instance v0, Lcom/phicomm/speaker/player/swig/media_event_type;

    const-string v1, "MEDIA_BUFFERING_UPDATE"

    invoke-static {}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->MEDIA_BUFFERING_UPDATE_get()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/player/swig/media_event_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/player/swig/media_event_type;->MEDIA_BUFFERING_UPDATE:Lcom/phicomm/speaker/player/swig/media_event_type;

    .line 16
    new-instance v0, Lcom/phicomm/speaker/player/swig/media_event_type;

    const-string v1, "MEDIA_STARTED"

    invoke-static {}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->MEDIA_STARTED_get()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/player/swig/media_event_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/player/swig/media_event_type;->MEDIA_STARTED:Lcom/phicomm/speaker/player/swig/media_event_type;

    .line 17
    new-instance v0, Lcom/phicomm/speaker/player/swig/media_event_type;

    const-string v1, "MEDIA_PAUSED"

    invoke-static {}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->MEDIA_PAUSED_get()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/player/swig/media_event_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/player/swig/media_event_type;->MEDIA_PAUSED:Lcom/phicomm/speaker/player/swig/media_event_type;

    .line 18
    new-instance v0, Lcom/phicomm/speaker/player/swig/media_event_type;

    const-string v1, "MEDIA_STOPPED"

    invoke-static {}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->MEDIA_STOPPED_get()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/player/swig/media_event_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/player/swig/media_event_type;->MEDIA_STOPPED:Lcom/phicomm/speaker/player/swig/media_event_type;

    .line 19
    new-instance v0, Lcom/phicomm/speaker/player/swig/media_event_type;

    const-string v1, "MEDIA_ERROR"

    invoke-static {}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->MEDIA_ERROR_get()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/player/swig/media_event_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/player/swig/media_event_type;->MEDIA_ERROR:Lcom/phicomm/speaker/player/swig/media_event_type;

    .line 20
    new-instance v0, Lcom/phicomm/speaker/player/swig/media_event_type;

    const-string v1, "MEDIA_INFO"

    invoke-static {}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->MEDIA_INFO_get()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/player/swig/media_event_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/player/swig/media_event_type;->MEDIA_INFO:Lcom/phicomm/speaker/player/swig/media_event_type;

    .line 56
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/phicomm/speaker/player/swig/media_event_type;

    sget-object v1, Lcom/phicomm/speaker/player/swig/media_event_type;->MEDIA_NOP:Lcom/phicomm/speaker/player/swig/media_event_type;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Lcom/phicomm/speaker/player/swig/media_event_type;->MEDIA_PREPARED:Lcom/phicomm/speaker/player/swig/media_event_type;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/phicomm/speaker/player/swig/media_event_type;->MEDIA_PLAYBACK_COMPLETE:Lcom/phicomm/speaker/player/swig/media_event_type;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/phicomm/speaker/player/swig/media_event_type;->MEDIA_BUFFERING_UPDATE:Lcom/phicomm/speaker/player/swig/media_event_type;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/phicomm/speaker/player/swig/media_event_type;->MEDIA_STARTED:Lcom/phicomm/speaker/player/swig/media_event_type;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/phicomm/speaker/player/swig/media_event_type;->MEDIA_PAUSED:Lcom/phicomm/speaker/player/swig/media_event_type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/phicomm/speaker/player/swig/media_event_type;->MEDIA_STOPPED:Lcom/phicomm/speaker/player/swig/media_event_type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/phicomm/speaker/player/swig/media_event_type;->MEDIA_ERROR:Lcom/phicomm/speaker/player/swig/media_event_type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/phicomm/speaker/player/swig/media_event_type;->MEDIA_INFO:Lcom/phicomm/speaker/player/swig/media_event_type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/phicomm/speaker/player/swig/media_event_type;->swigValues:[Lcom/phicomm/speaker/player/swig/media_event_type;

    .line 57
    sput v3, Lcom/phicomm/speaker/player/swig/media_event_type;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "swigName"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/phicomm/speaker/player/swig/media_event_type;->swigName:Ljava/lang/String;

    .line 41
    sget v0, Lcom/phicomm/speaker/player/swig/media_event_type;->swigNext:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/phicomm/speaker/player/swig/media_event_type;->swigNext:I

    iput v0, p0, Lcom/phicomm/speaker/player/swig/media_event_type;->swigValue:I

    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "swigName"    # Ljava/lang/String;
    .param p2, "swigValue"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/phicomm/speaker/player/swig/media_event_type;->swigName:Ljava/lang/String;

    .line 46
    iput p2, p0, Lcom/phicomm/speaker/player/swig/media_event_type;->swigValue:I

    .line 47
    add-int/lit8 v0, p2, 0x1

    sput v0, Lcom/phicomm/speaker/player/swig/media_event_type;->swigNext:I

    .line 48
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/phicomm/speaker/player/swig/media_event_type;)V
    .locals 1
    .param p1, "swigName"    # Ljava/lang/String;
    .param p2, "swigEnum"    # Lcom/phicomm/speaker/player/swig/media_event_type;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/phicomm/speaker/player/swig/media_event_type;->swigName:Ljava/lang/String;

    .line 52
    iget v0, p2, Lcom/phicomm/speaker/player/swig/media_event_type;->swigValue:I

    iput v0, p0, Lcom/phicomm/speaker/player/swig/media_event_type;->swigValue:I

    .line 53
    iget v0, p0, Lcom/phicomm/speaker/player/swig/media_event_type;->swigValue:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/phicomm/speaker/player/swig/media_event_type;->swigNext:I

    .line 54
    return-void
.end method

.method public static swigToEnum(I)Lcom/phicomm/speaker/player/swig/media_event_type;
    .locals 4
    .param p0, "swigValue"    # I

    .prologue
    .line 31
    sget-object v1, Lcom/phicomm/speaker/player/swig/media_event_type;->swigValues:[Lcom/phicomm/speaker/player/swig/media_event_type;

    array-length v1, v1

    if-ge p0, v1, :cond_0

    if-ltz p0, :cond_0

    sget-object v1, Lcom/phicomm/speaker/player/swig/media_event_type;->swigValues:[Lcom/phicomm/speaker/player/swig/media_event_type;

    aget-object v1, v1, p0

    iget v1, v1, Lcom/phicomm/speaker/player/swig/media_event_type;->swigValue:I

    if-ne v1, p0, :cond_0

    .line 32
    sget-object v1, Lcom/phicomm/speaker/player/swig/media_event_type;->swigValues:[Lcom/phicomm/speaker/player/swig/media_event_type;

    aget-object v1, v1, p0

    .line 35
    :goto_0
    return-object v1

    .line 33
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/phicomm/speaker/player/swig/media_event_type;->swigValues:[Lcom/phicomm/speaker/player/swig/media_event_type;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 34
    sget-object v1, Lcom/phicomm/speaker/player/swig/media_event_type;->swigValues:[Lcom/phicomm/speaker/player/swig/media_event_type;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/phicomm/speaker/player/swig/media_event_type;->swigValue:I

    if-ne v1, p0, :cond_1

    .line 35
    sget-object v1, Lcom/phicomm/speaker/player/swig/media_event_type;->swigValues:[Lcom/phicomm/speaker/player/swig/media_event_type;

    aget-object v1, v1, v0

    goto :goto_0

    .line 33
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 36
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No enum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/phicomm/speaker/player/swig/media_event_type;

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
    .line 23
    iget v0, p0, Lcom/phicomm/speaker/player/swig/media_event_type;->swigValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/phicomm/speaker/player/swig/media_event_type;->swigName:Ljava/lang/String;

    return-object v0
.end method
