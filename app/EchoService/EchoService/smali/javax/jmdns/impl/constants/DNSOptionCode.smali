.class public final enum Ljavax/jmdns/impl/constants/DNSOptionCode;
.super Ljava/lang/Enum;
.source "DNSOptionCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/jmdns/impl/constants/DNSOptionCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/jmdns/impl/constants/DNSOptionCode;

.field public static final enum LLQ:Ljavax/jmdns/impl/constants/DNSOptionCode;

.field public static final enum NSID:Ljavax/jmdns/impl/constants/DNSOptionCode;

.field public static final enum Owner:Ljavax/jmdns/impl/constants/DNSOptionCode;

.field public static final enum UL:Ljavax/jmdns/impl/constants/DNSOptionCode;

.field public static final enum Unknown:Ljavax/jmdns/impl/constants/DNSOptionCode;


# instance fields
.field private final _externalName:Ljava/lang/String;

.field private final _index:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 16
    new-instance v0, Ljavax/jmdns/impl/constants/DNSOptionCode;

    const-string v1, "Unknown"

    const-string v2, "Unknown"

    const v3, 0xffff

    invoke-direct {v0, v1, v8, v2, v3}, Ljavax/jmdns/impl/constants/DNSOptionCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSOptionCode;->Unknown:Ljavax/jmdns/impl/constants/DNSOptionCode;

    .line 20
    new-instance v0, Ljavax/jmdns/impl/constants/DNSOptionCode;

    const-string v1, "LLQ"

    const-string v2, "LLQ"

    invoke-direct {v0, v1, v4, v2, v4}, Ljavax/jmdns/impl/constants/DNSOptionCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSOptionCode;->LLQ:Ljavax/jmdns/impl/constants/DNSOptionCode;

    .line 24
    new-instance v0, Ljavax/jmdns/impl/constants/DNSOptionCode;

    const-string v1, "UL"

    const-string v2, "UL"

    invoke-direct {v0, v1, v5, v2, v5}, Ljavax/jmdns/impl/constants/DNSOptionCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSOptionCode;->UL:Ljavax/jmdns/impl/constants/DNSOptionCode;

    .line 28
    new-instance v0, Ljavax/jmdns/impl/constants/DNSOptionCode;

    const-string v1, "NSID"

    const-string v2, "NSID"

    invoke-direct {v0, v1, v6, v2, v6}, Ljavax/jmdns/impl/constants/DNSOptionCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSOptionCode;->NSID:Ljavax/jmdns/impl/constants/DNSOptionCode;

    .line 32
    new-instance v0, Ljavax/jmdns/impl/constants/DNSOptionCode;

    const-string v1, "Owner"

    const-string v2, "Owner"

    invoke-direct {v0, v1, v7, v2, v7}, Ljavax/jmdns/impl/constants/DNSOptionCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSOptionCode;->Owner:Ljavax/jmdns/impl/constants/DNSOptionCode;

    .line 11
    const/4 v0, 0x5

    new-array v0, v0, [Ljavax/jmdns/impl/constants/DNSOptionCode;

    sget-object v1, Ljavax/jmdns/impl/constants/DNSOptionCode;->Unknown:Ljavax/jmdns/impl/constants/DNSOptionCode;

    aput-object v1, v0, v8

    sget-object v1, Ljavax/jmdns/impl/constants/DNSOptionCode;->LLQ:Ljavax/jmdns/impl/constants/DNSOptionCode;

    aput-object v1, v0, v4

    sget-object v1, Ljavax/jmdns/impl/constants/DNSOptionCode;->UL:Ljavax/jmdns/impl/constants/DNSOptionCode;

    aput-object v1, v0, v5

    sget-object v1, Ljavax/jmdns/impl/constants/DNSOptionCode;->NSID:Ljavax/jmdns/impl/constants/DNSOptionCode;

    aput-object v1, v0, v6

    sget-object v1, Ljavax/jmdns/impl/constants/DNSOptionCode;->Owner:Ljavax/jmdns/impl/constants/DNSOptionCode;

    aput-object v1, v0, v7

    sput-object v0, Ljavax/jmdns/impl/constants/DNSOptionCode;->$VALUES:[Ljavax/jmdns/impl/constants/DNSOptionCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Ljavax/jmdns/impl/constants/DNSOptionCode;->_externalName:Ljava/lang/String;

    .line 40
    iput p4, p0, Ljavax/jmdns/impl/constants/DNSOptionCode;->_index:I

    .line 41
    return-void
.end method

.method public static resultCodeForFlags(I)Ljavax/jmdns/impl/constants/DNSOptionCode;
    .locals 6
    .param p0, "optioncode"    # I

    .prologue
    .line 66
    move v4, p0

    .line 67
    .local v4, "maskedIndex":I
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSOptionCode;->values()[Ljavax/jmdns/impl/constants/DNSOptionCode;

    move-result-object v1

    .local v1, "arr$":[Ljavax/jmdns/impl/constants/DNSOptionCode;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 68
    .local v0, "aCode":Ljavax/jmdns/impl/constants/DNSOptionCode;
    iget v5, v0, Ljavax/jmdns/impl/constants/DNSOptionCode;->_index:I

    if-ne v5, v4, :cond_0

    .line 70
    .end local v0    # "aCode":Ljavax/jmdns/impl/constants/DNSOptionCode;
    :goto_1
    return-object v0

    .line 67
    .restart local v0    # "aCode":Ljavax/jmdns/impl/constants/DNSOptionCode;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "aCode":Ljavax/jmdns/impl/constants/DNSOptionCode;
    :cond_1
    sget-object v0, Ljavax/jmdns/impl/constants/DNSOptionCode;->Unknown:Ljavax/jmdns/impl/constants/DNSOptionCode;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/jmdns/impl/constants/DNSOptionCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Ljavax/jmdns/impl/constants/DNSOptionCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/constants/DNSOptionCode;

    return-object v0
.end method

.method public static values()[Ljavax/jmdns/impl/constants/DNSOptionCode;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Ljavax/jmdns/impl/constants/DNSOptionCode;->$VALUES:[Ljavax/jmdns/impl/constants/DNSOptionCode;

    invoke-virtual {v0}, [Ljavax/jmdns/impl/constants/DNSOptionCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/jmdns/impl/constants/DNSOptionCode;

    return-object v0
.end method


# virtual methods
.method public externalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSOptionCode;->_externalName:Ljava/lang/String;

    return-object v0
.end method

.method public indexValue()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Ljavax/jmdns/impl/constants/DNSOptionCode;->_index:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSOptionCode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSOptionCode;->indexValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
