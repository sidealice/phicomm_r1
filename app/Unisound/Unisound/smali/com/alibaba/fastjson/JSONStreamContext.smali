.class Lcom/alibaba/fastjson/JSONStreamContext;
.super Ljava/lang/Object;
.source "JSONStreamContext.java"


# static fields
.field static final ArrayValue:I = 0x3ed

.field static final PropertyKey:I = 0x3ea

.field static final PropertyValue:I = 0x3eb

.field static final StartArray:I = 0x3ec

.field static final StartObject:I = 0x3e9


# instance fields
.field private final parent:Lcom/alibaba/fastjson/JSONStreamContext;

.field private state:I


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/JSONStreamContext;I)V
    .locals 0
    .param p1, "parent"    # Lcom/alibaba/fastjson/JSONStreamContext;
    .param p2, "state"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONStreamContext;->parent:Lcom/alibaba/fastjson/JSONStreamContext;

    .line 17
    iput p2, p0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    .line 18
    return-void
.end method


# virtual methods
.method public getParent()Lcom/alibaba/fastjson/JSONStreamContext;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONStreamContext;->parent:Lcom/alibaba/fastjson/JSONStreamContext;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    return v0
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    .line 30
    return-void
.end method
