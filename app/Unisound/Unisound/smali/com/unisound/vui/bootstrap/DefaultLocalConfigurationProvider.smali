.class public Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;
.super Ljava/lang/Object;


# static fields
.field private static final GRAMMAR_DIR:Ljava/lang/String; = "grammar"

.field private static final GRAMMAR_NAME:Ljava/lang/String; = ".dat"

.field private static final JSGF_DIR:Ljava/lang/String; = "jsgf_clg"

.field private static final JSGF_NAME:Ljava/lang/String; = "_clg.dat"

.field private static final NLU_DIR:Ljava/lang/String; = "nlu"

.field private static final NLU_NAME:Ljava/lang/String; = "_nlu_offline.conf"

.field private static final TAG:Ljava/lang/String; = "DefaultLocalConfigurationProvider"

.field public static final TTS_BACK_CHILD_NAME:Ljava/lang/String; = "backend_tangtang_lpc2wav_22k_pf"

.field public static final TTS_BACK_LZL_NAME:Ljava/lang/String; = "backend_lingling_lpc2wav_22k_pf"

.field public static final TTS_BACK_STANDAR_MALE_NAME:Ljava/lang/String; = "backend_xiaofeng_lpc2wav_22k_pf"

.field public static final TTS_BACK_STANDAR_NAME:Ljava/lang/String; = "backend_xiaowen_lpc2wav_22k_pf"

.field public static final TTS_BACK_SWEET_NAME:Ljava/lang/String; = "backend_xuanxuan_lpc2wav_22k_pf"

.field private static final TTS_CUSTOM_DIC:Ljava/lang/String; = "tts_custom_dic"

.field private static final TTS_DIR:Ljava/lang/String; = "ttsmodel"

.field private static final TTS_FRONT_NAME:Ljava/lang/String; = "frontend_model_offline"

.field private static final TTS_PCM:Ljava/lang/String; = "tts_pcm"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public copyJsgfFromAssets()V
    .locals 3

    iget-object v0, p0, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/vui/common/file/FileHelper;->getGrammarDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;->context:Landroid/content/Context;

    const-string v1, "grammar"

    iget-object v2, p0, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/unisound/vui/common/file/FileHelper;->getGrammarDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unisound/vui/common/file/FileHelper;->copyDirectoryFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "can\'t copy the grammar from assets"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;->context:Landroid/content/Context;

    const-string v1, "jsgf_clg"

    iget-object v2, p0, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/unisound/vui/common/file/FileHelper;->getJSGFDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unisound/vui/common/file/FileHelper;->copyDirectoryFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "can\'t copy the jsgf from assets"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/vui/common/file/FileHelper;->getNluDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;->context:Landroid/content/Context;

    const-string v1, "nlu"

    iget-object v2, p0, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/unisound/vui/common/file/FileHelper;->getNluDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unisound/vui/common/file/FileHelper;->copyDirectoryFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "can\'t copy the nlu from assets"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method public getConfig()Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;
    .locals 10

    const/4 v1, 0x0

    new-instance v3, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;

    invoke-direct {v3}, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;-><init>()V

    iget-object v0, p0, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;->context:Landroid/content/Context;

    const-string v2, "nlu"

    invoke-static {v0, v2}, Lcom/unisound/vui/common/file/FileHelper;->getFileListFromAssets(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v0, v4

    :goto_0
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v5, v4, v2

    const-string v6, "_nlu_offline.conf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;

    invoke-direct {v6}, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;-><init>()V

    iget-object v7, p0, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;->context:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_clg.dat"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/unisound/vui/common/file/FileHelper;->getJSGFFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;->setCompileJsgfPath(Ljava/lang/String;)Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;

    iget-object v7, p0, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;->context:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".dat"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/unisound/vui/common/file/FileHelper;->getGrammarFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;->setGrammerPath(Ljava/lang/String;)Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;

    iget-object v7, p0, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;->context:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_nlu_offline.conf"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/unisound/vui/common/file/FileHelper;->getNluFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;->setLocalNluPath(Ljava/lang/String;)Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;

    invoke-virtual {v3, v5, v6}, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;->addConfiguration(Ljava/lang/String;Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public getTTSBackendChildPath()Ljava/lang/String;
    .locals 1

    const-string v0, "backend_tangtang_lpc2wav_22k_pf"

    invoke-static {v0}, Lcom/unisound/vui/common/file/FileHelper;->getTTSModelFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTTSBackendLZLPath()Ljava/lang/String;
    .locals 1

    const-string v0, "backend_lingling_lpc2wav_22k_pf"

    invoke-static {v0}, Lcom/unisound/vui/common/file/FileHelper;->getTTSModelFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTTSBackendMalePath()Ljava/lang/String;
    .locals 1

    const-string v0, "backend_xiaofeng_lpc2wav_22k_pf"

    invoke-static {v0}, Lcom/unisound/vui/common/file/FileHelper;->getTTSModelFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTTSBackendStandarPath()Ljava/lang/String;
    .locals 1

    const-string v0, "backend_xiaowen_lpc2wav_22k_pf"

    invoke-static {v0}, Lcom/unisound/vui/common/file/FileHelper;->getTTSModelFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTTSBackendSweetPath()Ljava/lang/String;
    .locals 1

    const-string v0, "backend_xuanxuan_lpc2wav_22k_pf"

    invoke-static {v0}, Lcom/unisound/vui/common/file/FileHelper;->getTTSModelFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTTSFrontendPath()Ljava/lang/String;
    .locals 1

    const-string v0, "frontend_model_offline"

    invoke-static {v0}, Lcom/unisound/vui/common/file/FileHelper;->getTTSModelFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
