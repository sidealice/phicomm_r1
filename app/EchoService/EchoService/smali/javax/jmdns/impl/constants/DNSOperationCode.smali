.class public final enum Ljavax/jmdns/impl/constants/DNSOperationCode;
.super Ljava/lang/Enum;
.source "DNSOperationCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/jmdns/impl/constants/DNSOperationCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/jmdns/impl/constants/DNSOperationCode;

.field public static final enum IQuery:Ljavax/jmdns/impl/constants/DNSOperationCode;

.field public static final enum Notify:Ljavax/jmdns/impl/constants/DNSOperationCode;

.field static final OpCode_MASK:I = 0x7800

.field public static final enum Query:Ljavax/jmdns/impl/constants/DNSOperationCode;

.field public static final enum Status:Ljavax/jmdns/impl/constants/DNSOperationCode;

.field public static final enum Unassigned:Ljavax/jmdns/impl/constants/DNSOperationCode;

.field public static final enum Update:Ljavax/jmdns/impl/constants/DNSOperationCode;


# instance fields
.field private final _externalName:Ljava/lang/String;

.field private final _index:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 15
    new-instance v0, Ljavax/jmdns/impl/constants/DNSOperationCode;

    const-string v1, "Query"

    const-string v2, "Query"

    invoke-direct {v0, v1, v5, v2, v5}, Ljavax/jmdns/impl/constants/DNSOperationCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSOperationCode;->Query:Ljavax/jmdns/impl/constants/DNSOperationCode;

    .line 19
    new-instance v0, Ljavax/jmdns/impl/constants/DNSOperationCode;

    const-string v1, "IQuery"

    const-string v2, "Inverse Query"

    invoke-direct {v0, v1, v6, v2, v6}, Ljavax/jmdns/impl/constants/DNSOperationCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSOperationCode;->IQuery:Ljavax/jmdns/impl/constants/DNSOperationCode;

    .line 23
    new-instance v0, Ljavax/jmdns/impl/constants/DNSOperationCode;

    const-string v1, "Status"

    const-string v2, "Status"

    invoke-direct {v0, v1, v7, v2, v7}, Ljavax/jmdns/impl/constants/DNSOperationCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSOperationCode;->Status:Ljavax/jmdns/impl/constants/DNSOperationCode;

    .line 27
    new-instance v0, Ljavax/jmdns/impl/constants/DNSOperationCode;

    const-string v1, "Unassigned"

    const-string v2, "Unassigned"

    invoke-direct {v0, v1, v8, v2, v8}, Ljavax/jmdns/impl/constants/DNSOperationCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSOperationCode;->Unassigned:Ljavax/jmdns/impl/constants/DNSOperationCode;

    .line 31
    new-instance v0, Ljavax/jmdns/impl/constants/DNSOperationCode;

    const-string v1, "Notify"

    const-string v2, "Notify"

    invoke-direct {v0, v1, v9, v2, v9}, Ljavax/jmdns/impl/constants/DNSOperationCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSOperationCode;->Notify:Ljavax/jmdns/impl/constants/DNSOperationCode;

    .line 35
    new-instance v0, Ljavax/jmdns/impl/constants/DNSOperationCode;

    const-string v1, "Update"

    const/4 v2, 0x5

    const-string v3, "Update"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/constants/DNSOperationCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSOperationCode;->Update:Ljavax/jmdns/impl/constants/DNSOperationCode;

    .line 11
    const/4 v0, 0x6

    new-array v0, v0, [Ljavax/jmdns/impl/constants/DNSOperationCode;

    sget-object v1, Ljavax/jmdns/impl/constants/DNSOperationCode;->Query:Ljavax/jmdns/impl/constants/DNSOperationCode;

    aput-object v1, v0, v5

    sget-object v1, Ljavax/jmdns/impl/constants/DNSOperationCode;->IQuery:Ljavax/jmdns/impl/constants/DNSOperationCode;

    aput-object v1, v0, v6

    sget-object v1, Ljavax/jmdns/impl/constants/DNSOperationCode;->Status:Ljavax/jmdns/impl/constants/DNSOperationCode;

    aput-object v1, v0, v7

    sget-object v1, Ljavax/jmdns/impl/constants/DNSOperationCode;->Unassigned:Ljavax/jmdns/impl/constants/DNSOperationCode;

    aput-object v1, v0, v8

    sget-object v1, Ljavax/jmdns/impl/constants/DNSOperationCode;->Notify:Ljavax/jmdns/impl/constants/DNSOperationCode;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Ljavax/jmdns/impl/constants/DNSOperationCode;->Update:Ljavax/jmdns/impl/constants/DNSOperationCode;

    aput-object v2, v0, v1

    sput-object v0, Ljavax/jmdns/impl/constants/DNSOperationCode;->$VALUES:[Ljavax/jmdns/impl/constants/DNSOperationCode;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-object p3, p0, Ljavax/jmdns/impl/constants/DNSOperationCode;->_externalName:Ljava/lang/String;

    .line 48
    iput p4, p0, Ljavax/jmdns/impl/constants/DNSOperationCode;->_index:I

    .line 49
    return-void
.end method

.method public static operationCodeForFlags(I)Ljavax/jmdns/impl/constants/DNSOperationCode;
    .locals 6
    .param p0, "flags"    # I

    .prologue
    .line 74
    and-int/lit16 v5, p0, 0x7800

    shr-int/lit8 v4, v5, 0xb

    .line 75
    .local v4, "maskedIndex":I
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSOperationCode;->values()[Ljavax/jmdns/impl/constants/DNSOperationCode;

    move-result-object v1

    .local v1, "arr$":[Ljavax/jmdns/impl/constants/DNSOperationCode;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 76
    .local v0, "aCode":Ljavax/jmdns/impl/constants/DNSOperationCode;
    iget v5, v0, Ljavax/jmdns/impl/constants/DNSOperationCode;->_index:I

    if-ne v5, v4, :cond_0

    .line 78
    .end local v0    # "aCode":Ljavax/jmdns/impl/constants/DNSOperationCode;
    :goto_1
    return-object v0

    .line 75
    .restart local v0    # "aCode":Ljavax/jmdns/impl/constants/DNSOperationCode;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "aCode":Ljavax/jmdns/impl/constants/DNSOperationCode;
    :cond_1
    sget-object v0, Ljavax/jmdns/impl/constants/DNSOperationCode;->Unassigned:Ljavax/jmdns/impl/constants/DNSOperationCode;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/jmdns/impl/constants/DNSOperationCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Ljavax/jmdns/impl/constants/DNSOperationCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/constants/DNSOperationCode;

    return-object v0
.end method

.method public static values()[Ljavax/jmdns/impl/constants/DNSOperationCode;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Ljavax/jmdns/impl/constants/DNSOperationCode;->$VALUES:[Ljavax/jmdns/impl/constants/DNSOperationCode;

    invoke-virtual {v0}, [Ljavax/jmdns/impl/constants/DNSOperationCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/jmdns/impl/constants/DNSOperationCode;

    return-object v0
.end method


# virtual methods
.method public externalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSOperationCode;->_externalName:Ljava/lang/String;

    return-object v0
.end method

.method public indexValue()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Ljavax/jmdns/impl/constants/DNSOperationCode;->_index:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSOperationCode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSOperationCode;->indexValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
