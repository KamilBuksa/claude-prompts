# Technology Stack for AI-Powered Applications

## Core AI Development
- **AI Assistant**: Claude Code (primary), Cursor (secondary)
- **AI APIs**: Anthropic Claude, OpenAI GPT
- **Development Workflow**: AI-assisted development with MCP (Model Context Protocol)
- **Training/Communities**: 10xDevs, AI Devs

## Frontend
### Web
- **Framework**: Next.js (preferably monorepo approach)
- **Styling**: Tailwind CSS + ShadcnUI
- **Type Safety**: TypeScript

### Mobile
- **Primary**: React Native + Expo
- **Alternative**: Flutter

## Backend
- **Framework Options**:
  - NestJS (modular architecture)
  - Next.js API Routes (for monorepo)
  - Express (simpler projects)
- **Database**: PostgreSQL
- **Database Service**: Supabase
- **ORMs**: 
  - Prisma (recommended)
  - Drizzle
  - TypeORM

## Infrastructure & Deployment
- **Hosting Platform**: Vercel
- **Database/Auth**: Supabase
- **Payment Processing**: Stripe
- **Cloud Providers**: AWS, GCP (when needed)
- **Containerization**: Docker, Kubernetes (for complex deployments)

## Security & Monitoring
### Security Tools
- **Code Analysis**: Semgrep
- **Vulnerability Scanning**: Snyk
- **Code Quality**: SonarCube
- **Security Standards**: OWASP compliance

### Monitoring
- **Error Tracking**: Sentry, GlitchTip (self-hosted alternative)
- **Analytics**: Matomo (privacy-focused)
- **Integration**: Slack/Discord webhooks for alerts

## Development Tools
- **Version Control**: Git, GitHub
- **AI Code Assistants**: 
  - Claude Code with custom agents
  - Claude Code hooks for automation
- **API Testing**: REST, GraphQL, WebSocket support
- **Code Quality**: ESLint, Prettier

## Recommended Stack Combinations

### Simple SaaS/MVP
```
Next.js + Tailwind + ShadcnUI + Supabase + Vercel + Stripe
```

### Enterprise Application
```
NestJS + PostgreSQL + TypeORM + Docker + AWS/GCP
```

### AI-First Development
```
Claude Code + Next.js (monorepo) + Supabase + Vercel
```

## Key Principles
1. **Monorepo when possible** - Better AI context understanding
2. **Security-first** - Automated scanning, OWASP compliance
3. **Simple proven stack** - Avoid over-engineering
4. **AI-assisted workflow** - Leverage Claude Code fully
5. **Community learning** - Active Discord/community participation

## Stack Selection Criteria
- **For AI Development**: Prioritize tools with good Claude Code integration
- **For Speed**: Next.js + Vercel + Supabase
- **For Scale**: Add proper monitoring, security scanning, and infrastructure as code
- **For Teams**: NestJS for better modularity and separation of concerns

## Notes from Experience
- Claude Code > Cursor for complex projects
- Supabase provides sufficient flexibility for most projects
- Vercel deployment simplifies DevOps significantly
- Security tools (Semgrep, Snyk) are essential for production
- MCP (Model Context Protocol) enhances AI development capabilities
- Community resources (10xDevs, AI Devs) provide valuable learning