.class public Lcom/alibaba/fastjson/serializer/PascalNameFilter;
.super Ljava/lang/Object;
.source "PascalNameFilter.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/NameFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 6
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v1, p2

    .line 14
    :goto_0
    return-object v1

    .line 10
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 11
    .local v0, "chars":[C
    aget-char v2, v0, v3

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    aput-char v2, v0, v3

    .line 13
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 14
    .local v1, "pascalName":Ljava/lang/String;
    goto :goto_0
.end method
