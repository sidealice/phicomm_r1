.class public final enum Ljavax/jmdns/impl/JmDNSImpl$Operation;
.super Ljava/lang/Enum;
.source "JmDNSImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/JmDNSImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/jmdns/impl/JmDNSImpl$Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/jmdns/impl/JmDNSImpl$Operation;

.field public static final enum Add:Ljavax/jmdns/impl/JmDNSImpl$Operation;

.field public static final enum Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

.field public static final enum RegisterServiceType:Ljavax/jmdns/impl/JmDNSImpl$Operation;

.field public static final enum Remove:Ljavax/jmdns/impl/JmDNSImpl$Operation;

.field public static final enum Update:Ljavax/jmdns/impl/JmDNSImpl$Operation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;

    const-string v1, "Remove"

    invoke-direct {v0, v1, v2}, Ljavax/jmdns/impl/JmDNSImpl$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Remove:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;

    const-string v1, "Update"

    invoke-direct {v0, v1, v3}, Ljavax/jmdns/impl/JmDNSImpl$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Update:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;

    const-string v1, "Add"

    invoke-direct {v0, v1, v4}, Ljavax/jmdns/impl/JmDNSImpl$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Add:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;

    const-string v1, "RegisterServiceType"

    invoke-direct {v0, v1, v5}, Ljavax/jmdns/impl/JmDNSImpl$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->RegisterServiceType:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;

    const-string v1, "Noop"

    invoke-direct {v0, v1, v6}, Ljavax/jmdns/impl/JmDNSImpl$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [Ljavax/jmdns/impl/JmDNSImpl$Operation;

    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Remove:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    aput-object v1, v0, v2

    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Update:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    aput-object v1, v0, v3

    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Add:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    aput-object v1, v0, v4

    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl$Operation;->RegisterServiceType:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    aput-object v1, v0, v5

    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    aput-object v1, v0, v6

    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->$VALUES:[Ljavax/jmdns/impl/JmDNSImpl$Operation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/jmdns/impl/JmDNSImpl$Operation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    const-class v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;

    return-object v0
.end method

.method public static values()[Ljavax/jmdns/impl/JmDNSImpl$Operation;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->$VALUES:[Ljavax/jmdns/impl/JmDNSImpl$Operation;

    invoke-virtual {v0}, [Ljavax/jmdns/impl/JmDNSImpl$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/jmdns/impl/JmDNSImpl$Operation;

    return-object v0
.end method
