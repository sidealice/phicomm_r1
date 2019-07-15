.class public final Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocalRecognition"
.end annotation


# instance fields
.field private compileJsgfPath:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "compileJsgfPath"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "compileJsgfPath"
    .end annotation
.end field

.field private grammerPath:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "grammerPath"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "grammerPath"
    .end annotation
.end field

.field private localNluPath:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "localNluPath"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "localNluPath"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "grammerPath"    # Ljava/lang/String;
    .param p2, "compileJsgfPath"    # Ljava/lang/String;
    .param p3, "localNluPath"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;->grammerPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;->compileJsgfPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;->localNluPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCompileJsgfPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;->compileJsgfPath:Ljava/lang/String;

    return-object v0
.end method

.method public getGrammerPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;->grammerPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalNluPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;->localNluPath:Ljava/lang/String;

    return-object v0
.end method

.method public setCompileJsgfPath(Ljava/lang/String;)Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;
    .locals 0
    .param p1, "compileJsgfPath"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;->compileJsgfPath:Ljava/lang/String;

    return-object p0
.end method

.method public setGrammerPath(Ljava/lang/String;)Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;
    .locals 0
    .param p1, "grammerPath"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;->grammerPath:Ljava/lang/String;

    return-object p0
.end method

.method public setLocalNluPath(Ljava/lang/String;)Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;
    .locals 0
    .param p1, "localNluPath"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;->localNluPath:Ljava/lang/String;

    return-object p0
.end method
