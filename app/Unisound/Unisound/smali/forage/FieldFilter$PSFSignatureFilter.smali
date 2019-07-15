.class public Lforage/FieldFilter$PSFSignatureFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lforage/FieldFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lforage/FieldFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PSFSignatureFilter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isPsfSignature(I)Z
    .locals 1
    .param p0, "modifiers"    # I

    .prologue
    const/16 v0, 0x19

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public accept(Ljava/lang/String;ILjava/lang/Class;)Z
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "modifiers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lforage/FieldFilter$PSFSignatureFilter;->isPsfSignature(I)Z

    move-result v0

    return v0
.end method
